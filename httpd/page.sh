#!/bin/bash

page_array[0]=https://demo.dagen.life/
page_array[1]=https://demo.dagen.life/gens
page_array[2]=https://demo.dagen.life/igo
page_array[3]=https://demo.dagen.life/game
page_array[4]=https://pancakeswap.finance/info
rm -rf dagen-market.txt
for var in ${page_array[@]};
do
        ab -n 1000 -c 1000  $var  >> dagen-market.txt

done


