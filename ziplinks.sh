#!/bin/bash
set -e

# file cannot be too small
for i in `seq 1 50`
do
    echo bullsh1t >> testfile.txt
done

# add symlinks
ln -s / .root

# zip stuff
zip --symlinks cmd.zip testfile.txt .root

# cleanup
rm .root testfile.txt
