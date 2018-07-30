#!/usr/bin/env bash

source ./variables

gaiacli stake create-validator \
    --amount=2steak \
    --pubkey=$node \
    --address-validator=$address \
    --chain-id=$chain \
    --sequence=0 \
    --from=$key_name

