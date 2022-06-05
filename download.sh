#!/bin/bash

set -e

echo "Finding new folders..."

folders=`ssh sky 'ls -p ArchivedFiles | grep /'`
fs=(${folders//\/})

for f in "${fs[@]}"; do
  path="ArchivedFiles/$f"
  if [ ! -d ~/sky/$path ]; then
    echo "downloading $f..."
    scp -r sky:$path ~/sky/$path
    echo '*******************************************'
  fi
done

echo "done."
