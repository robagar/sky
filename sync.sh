#!/bin/bash

set -e

echo "Downloading archived files..."
rsync -chavPL --exclude="*.tar.bz2" --ignore-existing  rsync://sky/rms/ArchivedFiles ~/sky

echo "Downloading logs..."
rsync -chavPLz --ignore-existing rsync://sky/rms/logs ~/sky

echo "done."
