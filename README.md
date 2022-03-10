# Dapp & smart contract development tutorials

## Smart contract

`mkdir smart-contract`
`cd smart-contract`

### Install

`npm install --save-dev hardhat`

### Build

`npx hardhat compile`

### Local blockchain

`npx hardhat node`

### Deploy Contract to local blockchain

`npx hardhat run scripts/sample-script.js --network localhost`

### Metamask setup local network

Name: localhost:8545

RPC URL: http://localhost:8545

ChainID: 31337

Currency Symbol: ETH

### Take some ETH from local blockchain

`cp -R ../teaching-material/tasks .`

`cp ../teaching-material/hardhat.config.js .`

`npx hardhat --network localhost faucet <your address>`

## Dapp

Finish the index-START.html file.