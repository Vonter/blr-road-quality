# BLR Road Quality

A map to visualize the quality of roads in Bengaluru, using data from [OpenStreetMap](https://openstreetmap.in).

### Motivation

Inspired by [a post on Skyscraper City](https://www.skyscrapercity.com/threads/bengaluru-roads-flyovers-underpasses.1025435/post-179718345) and my time spent on the roads of Bengaluru.

### Contribution Guide (TODO)

[Submit a new issue](https://github.com/Vonter/india-polling-stations/issues/new) with details about:
* Name of the road
* Quality of the road
* Date on which observation was made

Currently the changes are being manually added on OpenStreetMap, so it may take a few days for your changes to be reflected on the site. We will soon be optimizing this process so that changes will be visible more quickly.

### Deploying the site

* Install `osmtogeojson`

`npm install -g osmtogeojson`

* Export a `.geojson` with the latest data from OpenStreetMap by running the `overpass-query.sh` script

`bash overpass-query.sh`

##### Local

* Setup a HTTP server for serving the site locally with Python

`python3 -m http.server`

The site will be available at http://127.0.0.1:8000

##### Internet

Deploy the site to a static site hosting service of your choice (GitHub Pages, Netlify, Cloudflare)

### Future Plans

##### TODO

* Add TODOs as tagged issues
* Documentation improvements
* Daily automated site deployments using GitHub Actions (for latest data from OSM)
* Kannada version of site
* Google Docs/Forms for user-submitted reports (automatically export to GitHub Issues)
* [Map GeoJSON rendering performance](https://stackoverflow.com/questions/17626198/render-2500-geojson-polygons-onto-a-leaflet-map) [1](https://danw1ld.medium.com/how-to-render-huge-geojson-datasets-on-a-map-part-2-be1edf555034), [2](https://www.mapbox.com/blog/introducing-geojson-vt/) or [3](https://github.com/mbostock/topojson/wiki)

### Ideas

* Telegram Group for user-submitted reports (automatically export to GitHub Issues)
* Sidewalk/footpath quality
* Material of road surface (white-topped or not?)
* Number of lanes
* On-going digging/tarring/construction on road
* User contributed geo-tagged photos
* Vague quantification of traffic congestion
