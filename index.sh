#!/bin/bash
# Loop through directories and copy first file to index.

mkdir -p index
for dir in */; do
	if [ "$dir" != "index/" ]; then
		for f in "$dir"*.jpg; do
			echo "$f"
			cp "$f" "index/${dir::-1}.jpg"
			break
		done
        fi
done
