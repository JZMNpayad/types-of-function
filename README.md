# types-of-function

## Overview

SecureToken is an Ethereum-based ERC-20 token smart contract that provides secure minting, burning, and transfer functionalities. It is built with the OpenZeppelin library and includes additional security features.

## Features

- ERC-20 Standard: Implements the ERC-20 standard for compatibility with various decentralized applications (DApps) and exchanges.
- Ownable: Inherits from the Ownable contract to restrict certain functions to the owner.
- Initial Supply: Initializes the contract with an initial supply of tokens.

## Deployment

The contract is deployed with the name "JazminCoin" and the symbol "JZMN". The initial supply is specified during deployment.

## Functions

### `secureMint(uint256 amount)`

Allows the owner to securely mint additional tokens.

### `secureBurn(uint256 amount)`

Allows any address to securely burn a specified amount of their own tokens.

### `transfer(address recipient, uint256 amount)`

Overrides the ERC-20 `transfer` function to include additional security checks through `secureTransfer`.

### `secureTransfer(address recipient, uint256 amount)`

Allows the owner to securely transfer tokens from their own balance to the specified recipient.

## Usage

1. Deploy the Smart Contract on the Ethereum blockchain.
2. Interact with the contract using functions such as `secureMint`, `secureBurn`, `transfer`, and `secureTransfer`.

## Security

- The `secureMint` function can only be called by the owner of the contract.
- The `secureBurn` function requires a non-zero amount and checks for sufficient balance before burning.
- The `secureTransfer` function can only be called by the owner and includes balance checks.

## License

This smart contract is distributed under the MIT License. See the [LICENSE](LICENSE) file for more information.

