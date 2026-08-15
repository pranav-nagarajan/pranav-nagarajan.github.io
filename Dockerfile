FROM ruby:3.4.5-bookworm
ENV DEBIAN_FRONTEND=noninteractive

LABEL maintainer="Amir Pourmand"

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    locales \
    imagemagick \
    build-essential \
    zlib1g-dev \
    jupyter-nbconvert && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*


RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen


ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JEKYLL_ENV=production

WORKDIR /srv/jekyll

COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.7.0 --no-document && \
    bundle install --jobs 4 --retry 3

EXPOSE 8080

COPY bin/entry_point.sh /usr/local/bin/entry_point.sh
RUN chmod +x /usr/local/bin/entry_point.sh

ENTRYPOINT ["/usr/local/bin/entry_point.sh"]
