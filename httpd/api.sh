#!/bin/bash

api_array[0]=https://demo.dagen.io/api/querySetting
api_array[1]=https://demo.dagen.io/api/attributeStatistics?on_sale=true
api_array[2]=https://demo.dagen.io/api/genOwners?chainId=4&tokenId=1
api_array[3]="https://demo.dagen.io/api/getAttributesRarity?attributes[]=%7B%22trait_type%22:%22Nickname%22,%22value%22:%22Cinnabar+Devourer%22%7D&attributes[]=%7B%22trait_type%22:%22Divinity%22,%22value%22:%221%22%7D&attributes[]=%7B%22trait_type%22:%22Function%22,%22value%22:%22Convert%22%7D&attributes[]=%7B%22trait_type%22:%22Input%22,%22value%22:%22Light%22%7D&attributes[]=%7B%22trait_type%22:%22Spectrum%22,%22value%22:%22Red%22%7D&attributes[]=%7B%22trait_type%22:%22Output%22,%22value%22:%22Energy%22%7D&attributes[]=%7B%22trait_type%22:%22Type%22,%22value%22:%22C%22%7D&attributes[]=%7B%22trait_type%22:%22Variant%22,%22value%22:%221%22%7D"
api_array[4]=https://demo.dagen.io/api/profile?walletAddress=0x37d8b0123d013ad824b14d8e6a946da425b551cd
api_array[5]=https://demo.dagen.io/gens/00000000000000000000000000000000000000000000000000000000000000001.json
api_array[6]=https://demo.dagen.io/api/genOwners?chainId=4&tokenId=1
api_array[7]=https://demo.dagen.io/api/queryBlindBox?page=0&onSale=false
api_array[8]=https://demo.dagen.io/api/verifyForBlindBox


rm -rf dagen-api.txt

for var in ${api_array[@]};
do
	ab -n 1000 -c 1000  $var  >> dagen-api.txt	

done

