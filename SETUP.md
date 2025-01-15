# MANTRA Chain One-Click Development Environment

This document outlines the setup and usage of the one-click development environment for MANTRA Chain using GitPod.

## Development Plan

### 1. Repository Setup
- Create a base repository containing:
  - Hello World CosmWasm contract
  - Pre-configured environment files
  - `.gitpod.yml` configuration
  - Environment scripts
  - Test files and examples

### 2. GitPod Configuration
`.gitpod.yml` will include:
- Installation of required tools:
  - Rust and cargo tools
  - Go environment
  - Docker
  - mantrachaind CLI
- Environment variable setup
- VS Code extensions:
  - Rust Analyzer
  - CosmWasm IDE support
  - Git extensions

### 3. Automated Setup Scripts
Create scripts for:
- Tool installation and verification
- Network configuration for MANTRA testnet
- Wallet setup and configuration
- Environment variable configuration

### 4. Testing & Validation
- Test complete workflow
- Verify all tools are installed correctly
- Ensure contract compilation works
- Validate testnet connection
- Check wallet creation process

## User Flow

### Before Session
1. Prerequisites:
   - GitHub account
   - Web browser
   - Stable internet connection

### During Session
1. **Environment Access** (2-3 minutes)
   - Click provided GitPod link
   - GitPod will create workspace
   - Auto-install all dependencies

2. **Wallet Setup** (2-3 minutes)
   - Use pre-configured script to create wallet
   - Save wallet information securely
   - Request test tokens from faucet

3. **Hello World Development** (Rest of session)
   - Access pre-loaded Hello World contract
   - Compile contract using UI buttons
   - Deploy to testnet
   - Interact with deployed contract

## Technical Components

### 1. Pre-installed Tools
- Rust (latest stable)
- Go 1.18+
- Docker
- mantrachaind CLI
- VS Code extensions
- Git

### 2. Environment Variables
```bash
export NODE="--node https://rpc.testnet.mantrachain.io:443"
export CHAIN_ID="mantrachain-testnet-1"
export TXFLAG="${NODE} --chain-id ${CHAIN_ID} --gas-prices 0.025uaum --gas auto --gas-adjustment 1.3"
```

### 3. Project Structure
```
/workspace
├── .gitpod.yml
├── scripts/
│   ├── install.sh
│   ├── setup-wallet.sh
│   └── deploy-contract.sh
├── contracts/
│   └── hello-world/
└── README.md
```

## Development Workflow

### 1. Initial Setup
```bash
# Automated by .gitpod.yml
- Install Rust
- Install Go
- Setup mantrachaind
- Configure environment
```

### 2. Contract Development
```bash
# Available through UI buttons
- Compile contract
- Optimize contract
- Deploy to testnet
- Interact with contract
```

### 3. Testing
```bash
# Available through UI or scripts
- Run unit tests
- Deploy to testnet
- Execute contract calls
```

## Common Issues & Solutions

### 1. Installation Issues
- Automated retry mechanisms in place
- Clear error messages
- Fallback options for failed installations

### 2. Network Issues
- Multiple RPC endpoints configured
- Clear error messages for network issues
- Automatic reconnection attempts

### 3. Contract Deployment Issues
- Gas estimation handling
- Clear error messages
- Retry mechanisms for failed deployments

## Support Resources

1. **Documentation**
   - Quick start guide
   - Common issues
   - Troubleshooting steps

2. **Useful Commands**
   - Wallet creation
   - Contract deployment
   - Network interaction

3. **Links**
   - MANTRA Chain documentation
   - CosmWasm documentation
   - Community support channels

## Next Steps

1. **For Developers**
   - Review and implement .gitpod.yml
   - Create automation scripts
   - Test complete workflow
   - Document common issues

2. **For Users**
   - Follow setup guide
   - Complete Hello World tutorial
   - Explore additional features
   - Join community channels
