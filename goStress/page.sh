#!/bin/bash

page_array[0]=https://demo.dagen.life/
page_array[1]=https://demo.dagen.life/gens
page_array[2]=https://demo.dagen.life/igo
page_array[3]=https://demo.dagen.life/game
page_array[4]=https://pancakeswap.finance/info
for var in ${page_array[@]};
do
./go-stress-testing-linux -c 1000  -n 1 -u $var 2>&1 |tee dagen-market.txt
done


