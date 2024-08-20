---
layout: page
permalink: /repositories/
title: Code/Data
description:
nav: true
nav_order: 4
---

##### Validation of _Gaia_ Astrometric Binary Solutions

Catalogs of hierarchical triples hosting astrometric binaries with astrometric or acceleration solutions in _Gaia_ DR3 can be found [here](https://github.com/pranav-nagarajan/Astrometric-Binaries-Validation). The associated paper is [Validation of Gaia DR3 orbital and acceleration solutions with hierarchical triples](https://ui.adsabs.harvard.edu/abs/2024arXiv240716760N/abstract).

##### ESPRESSO observations of Gaia BH1

ESPRESSO spectra used to measure precise radial velocities for Gaia BH1 can be found [here](https://github.com/pranav-nagarajan/Gaia-BH1-Precision-RVs). The associated paper is [ESPRESSO Observations of Gaia BH1: High-precision Orbital Constraints and no Evidence for an Inner Binary](https://ui.adsabs.harvard.edu/abs/2024PASP..136a4202N/abstract).

##### Double Spectrograph Flexure Corrections

A Jupyter Notebook tutorial for computing flexure corrections for the Double Spectrograph (DBSP) at Palomar Observatory based on telluric lines can be found [here](https://github.com/pranav-nagarajan/DBSP-Flexure-Corrections). This method was used in the paper [Spectroscopic follow-up of black hole and neutron star candidates in ellipsoidal variables from Gaia DR3](https://ui.adsabs.harvard.edu/abs/2023MNRAS.524.4367N/abstract).

##### RR Lyrae-based Distances for Local Group Dwarf Galaxies

A catalog of variability periods and Wesenheit magnitudes for RR Lyrae variable stars in 39 Local Group dwarf galaxies, compiled from the literature, can be found [here](https://github.com/pranav-nagarajan/Mapping-Local-Group). The repository also includes code for simultaneously fitting the Period-Wesenheit Magnitude-Metallicity relationship for each dwarf galaxy. This distance determination method is anchored to _Gaia_ eDR3 parallaxes, and can be used to derive a distance modulus to a Local Group dwarf galaxy with newly discovered RRab stars. The associated paper is [RR Lyrae-based Distances for 39 Nearby Dwarf Galaxies Calibrated to Gaia eDR3](https://ui.adsabs.harvard.edu/abs/2022ApJ...932...19N/abstract).

{% if site.data.repositories.github_users %}

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>

---

{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% include repository/repo_trophies.liquid username=user %}
  </div>

---

{% endfor %}
{% endif %}
{% endif %}

{% if site.data.repositories.github_repos %}

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.liquid repository=repo %}
  {% endfor %}
</div>
{% endif %}
