#!/usr/bin/env bash

source ./variables
echo $address
echo $chain
echo $node

gaiacli stake unbond begin --address-validator $address --address-delegator $address --chain-id $chain --from $key_name --shares-percent 1 --gas 100000000

