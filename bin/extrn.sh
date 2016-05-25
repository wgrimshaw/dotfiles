#!/bin/sh

for file in "$PWD"/*; do
  if [ -d "$file" ]; then
    continue
  fi
  nf=$(basename "$file" .$1)
  mv "$file" "$nf.$2"
done
