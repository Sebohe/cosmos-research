https://cosmos.network/docs/resources/whitepaper.html#tendermint


For example, zones derived from Bitcoind, Go-Ethereum, CryptoNote, ZCash, or any blockchain system can be plugged into the Cosmos Hub


### IBC:

The IBC protocol can naturally be defined using two types of transactions: an IBCBlockCommitTx transaction, which allows a blockchain to prove to any observer of its most recent block-hash, and an IBCPacketTx transaction, which allows a blockchain to prove to any observer that the given packet was indeed published by the sender's application, via a Merkle-proof to the recent block-hash.


### hard-fork:
In situations where the Cosmos Hub halts due to a ≥⅓ coalition of voting power going offline, or in situations where a ≥⅓ coalition of voting power censor evidence of malicious behavior from entering the blockchain, the hub must recover with a hard-fork reorg-proposal. (Link to "Forks and Censorship Attacks").

### Transaction Fees

Cosmos Hub validators can accept any token type or combination of types as fees for processing a transaction. Each validator can subjectively set whatever exchange rate it wants, and choose whatever transactions it wants, as long as the BlockGasLimit is not exceeded. The collected fees, minus any taxes specified below, are redistributed to the bonded stakeholders in proportion to their bonded atoms, every ValidatorPayoutPeriod (DEFAULT 1 hour).

Of the collected transaction fees, ReserveTax (DEFAULT 2%) will go toward the reserve pool to increase the reserve pool and increase the security and value of the Cosmos network. These funds can also be distributed in accordance with the decisions made by the governance system.

Atom holders who delegate their voting power to other validators pay a commission to the delegated validator. The commission can be set by each validator.



