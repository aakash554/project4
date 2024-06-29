# DegenToken Project

This project contains the DegenToken smart contract and the Hardhat configuration for development, testing, and deployment on Avalanche networks.

## DegenToken Contract

DegenToken is an ERC20 token implementation with additional features for a simple in-game economy.

### Features

- ERC20 compliant token
- Minting new tokens (owner only)
- Burning tokens
- Transferring tokens
- Shop with redeemable products
- Balance checking

### Contract Details

- Token Name: Degen
- Token Symbol: DGN
- Solidity Version: ^0.8.18
- License: MIT

### Functions

- `mint(address to, uint256 amount)`: Mint new tokens (owner only)
- `transferAmount(address to, uint256 amount)`: Transfer tokens
- `burn(uint amount)`: Burn tokens
- `ShopMenu()`: View available shop products
- `RedeemProducts(uint item)`: Redeem products from the shop
- `checkbalance()`: Check token balance

### Shop Items

1. DGN T-Shirt (50 DGN)
2. DGN Pants (50 DGN)
3. DGN NFT (100 DGN)
4. DGN Guns (40 DGN)
5. DGN BackPack (20 DGN)

## Hardhat Configuration

The project uses Hardhat for development, testing, and deployment.

### Networks

- Hardhat (local development)
- Fuji (Avalanche testnet)
- Mainnet (Avalanche mainnet)

### Configuration Details

- Solidity Version: 0.8.18
- Gas Price: 225 Gwei
- Chain IDs:
  - Hardhat: 43112 (when not forking)
  - Fuji: 43113
  - Mainnet: 43114

### Forking Options

The configuration supports forking either the Fuji testnet or Avalanche mainnet for local development.

### Dependencies

- @nomicfoundation/hardhat-toolbox
- dotenv

## Usage

1. Clone the repository
2. Install dependencies: `npm install`
3. Create a `.env` file and add your private key and Etherscan API key
4. Compile the contract: `npx hardhat compile`
5. Run tests: `npx hardhat test`
6. Deploy to desired network: `npx hardhat run scripts/deploy.js --network <network-name>`

## Security Note

The provided configuration includes placeholder private keys and API keys. Make sure to replace these with your own secure keys and never commit sensitive information to version control.

## License

This project is licensed under the MIT License.

## Authors

Contributors names and contact info

Aakash Sharma  
(aakasharma5504@gmail.com)
