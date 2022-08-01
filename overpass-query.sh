#!/bin/bash

rm blr-road-quality.json blr-road-quality.geojson
curl --output blr-road-quality.json "https://overpass-api.de/api/interpreter" --data "[out:json][timeout:10]; way["smoothness"](12,77,14,79); out geom;"
osmtogeojson blr-road-quality.json > blr-road-quality.geojson
