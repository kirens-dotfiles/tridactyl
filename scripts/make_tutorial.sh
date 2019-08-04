#!/bin/sh

# Combine tutorial markdown and template

if ! cd src/static/clippy; then
    echo "Failed to cd in src/static/clippy. Aborting."
    exit
fi

pages=$(ls ./*.md)
dest="../../../generated/static/clippy/"

for page in $pages
do
    fileroot=$(echo "$page" | cut -d'.' -f-2)
    sed "/REPLACETHIS/,$ d" tutor.template.html > "$dest$fileroot.html"
    "$(yarn $YARN_FLAGS bin)/marked" "$page" >> "$dest$fileroot.html"
    sed "1,/REPLACETHIS/ d" tutor.template.html >> "$dest$fileroot.html"
done
