# Dapp & smart contract development tutorials

## Smart contract

```bash
mkdir smart-contract
```

```bash
cd smart-contract
```
### Install

```bash
npm install --save-dev hardhat
```

### Build

```bash
npx hardhat compile
```

### Local blockchain

```bash
npx hardhat node
```

### Deploy Contract to local blockchain

```bash
npx hardhat run scripts/sample-script.js --network localhost
```

### Metamask setup local network

Name: localhost:8545

RPC URL: http://localhost:8545

ChainID: 31337

Currency Symbol: ETH

### Take some ETH from local blockchain

```bash
cp -R ../teaching-material/tasks .
```

```bash
cp ../teaching-material/hardhat.config.js .
```

```bash
npx hardhat --network localhost faucet <your address>
```

## Dapp

Finish `index-START.html` file.