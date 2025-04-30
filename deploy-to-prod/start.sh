#!/bin/bash
set -e

# Exit if no arguments were given
if [ $# -eq 0 ]; then
    echo "WARNING: No arguments given, cancelling."
    exit 1
fi

TARGET=$1
shift

mkdir -p $TARGET
cd $TARGET

# deploy each given git repo
for NAME in "$@"; do
    if test -d $NAME; then
        echo "Deploying $NAME..."
        cd $NAME && git pull && cd ../
    else
        echo "WARNING: No repo with name $NAME, skipping..."
    fi
done

echo "DONE."
exit 0
