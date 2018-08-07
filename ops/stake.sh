#!/usr/bin/env bash

source ./variables
gaicli account $address
stake=$(gaiacli account $address | grep amount | cut -d: -f 2 | tr -d \")
# Always leave some 2 steaks just incase
((stake=$stake - 2))

gaiacli stake create-validator \
    --amount=$stake \
    --pubkey=$node \
    --address-validator=$address \
    --chain-id=$chain \
    --from=$key_name \
    --moniker $moniker
