#!/bin/bash
set -e

# Exit if no arguments were given
if [ $# -eq 0 ]; then
    echo "WARNING: No arguments given, cancelling."
    exit 1
fi

REPO_LIST="/repos.txt"
TARGET=$1

mkdir -p $TARGET
cd $TARGET

# cleanup and clone fresh repos
while read -r URL; do
    if [ -z "$URL" ]; then
        continue
    fi

    REPO_NAME=$(basename "$URL" .git)
    REPO_DIR="/$TARGET/$REPO_NAME/"

    if [ -d $REPO_DIR ]; then
        echo "Cleaning up $REPO_DIR"
        rm -rf $REPO_DIR
    fi

    git clone $URL

done < "$REPO_LIST"

echo "DONE."
exit 0
