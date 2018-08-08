#!/usr/bin/env bash

## Edit this value! #####
key_name='nimrod'
coin_name='steak'
#########################

address=$(gaiacli keys list | grep $key_name | awk '{print $3}')
moniker=$(gaiacli status | jq .node_info.moniker | tr -d \")
chain=$(gaiacli status | jq .node_info.network | tr -d \")

stake=$(gaiacli account $address | grep amount | cut -d: -f 2 | tr -d \")
node=$(gaiad tendermint show_validator)

stake=$(gaiacli account $address | jq .value.coins[0].amount | tr -d \")
# Always leave some 10 steaks just incase
((stake=$stake - 10))
stake=$stake$coin_name

echo amount to stake: $stake
echo address: $address
echo key_name: $key_name
echo chain-id: $chain
echo moniker: $moniker
echo node_address: $node
echo '\n\n'

gaiacli stake create-validator \
    --amount=$stake \
    --pubkey=$node \
    --address-validator=$address \
    --chain-id=$chain \
    --from=$key_name \
    --moniker $moniker \
    --website 'altheamesh.com'

