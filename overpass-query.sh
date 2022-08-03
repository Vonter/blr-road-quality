#!/bin/bash

rm blr-road-quality.json blr-road-quality.geojson

while true;
do
    curl --output blr-road-quality.json "https://overpass-api.de/api/interpreter" --data "[out:json][timeout:10]; (way["smoothness"](12,77,14,79); way["flood_prone"](12,77,14,79);); out geom;"
    if find blr-road-quality.json -type f -size +51200c 2>/dev/null | grep -q .; then
        echo "The overpass query has run successfully"
        break
    else
        echo "The overpass query has failed... re-running in 15 seconds..."
        sleep 15
        continue
    fi
done

osmtogeojson blr-road-quality.json > blr-road-quality.geojson.orig
echo $(jq -c . < blr-road-quality.geojson.orig) > blr-road-quality.geojson
