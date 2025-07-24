# Basic NFT Smart Contract

This repository contains a simple NFT (Non-Fungible Token) smart contract project written in Solidity using the Foundry framework. The contract allows users to mint NFTs with a static metadata URI.

## 📦 Project Structure


## 🛠️ Features

- Mint NFTs with a single function call.
- Returns token URI from a hardcoded IPFS or HTTP URL.
- Basic test cases included.
- Easy to deploy with `forge script`.

## 🚀 Getting Started

### Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation) installed
- Git + GitHub account
- A code editor like VS Code

### Installation

1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name


Build the project:

bash
Copy
Edit
forge build
Run tests:

bash
Copy
Edit
forge test
Deploy contract (local or testnet):

bash
Copy
Edit
forge script script/DeployBasicNft.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
📄 Contract Overview
Contract: BasicNft.sol

mintNft() - Allows anyone to mint an NFT.

tokenURI() - Returns the URI pointing to the metadata.

🧪 Tests
The project includes basic tests located in the test/ folder using forge-std.
