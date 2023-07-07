# Redeem 
This program creates a relation between owner and sender by allowing them to mint, burn and Redeem tokens 

## Description

This program is written using Solidity-programming language used for developing smart contracts on the Ethereum blockchain. Using mint, burn, transfer and redeem function. Redeem fuction with live example of purchasing a product. 

## Getting Started

### Installing

* Fork the starter template project to begin
* Modify DegenToken.sol under contracts and add an env file to link the account under scripts.

### Executing program

* In terminal type- npx hardhat run scripts/deploy.js --network fuji
* After that you'll be deployed to a particular account say x
* Now you need to verify
* npx hardhat verify  x  --network fuji (note: replace x with the above account Id)
```
npx hardhat run scripts/deploy.js --network fuji
npx hardhat verify  x  --network fuji

```

## Help

Copy the acoount properly, it doesn't work with spaces.


## Authors

Contributors names and contact info

S.R Monish Raj

srs2kin04@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
