#!/usr/bin/env bash

address=$(gaiacli keys list | grep $key_name | awk '{print $3}')
chain=$(gaiacli status | jq .node_info.network | tr -d \")
node=$(gaiad tendermint show_validator)

gaiacli stake unbond begin --address-validator $address --address-delegator $address --chain-id $chain --from $key_name --shares-percent 1 --gas 100000000

