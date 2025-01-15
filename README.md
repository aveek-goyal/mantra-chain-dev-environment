# MANTRA Chain One-Click Development Environment 🚀

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/aveek-goyal/mantra-chain-dev-environment)

Welcome to the MANTRA Chain development environment! This guide will help you get started with CosmWasm development without any complex installations.

## 👩‍💻 For Students

### Step 1: Prerequisites
1. Create a GitHub account if you don't have one: [Sign up here](https://github.com/signup)
2. Make sure you have a modern web browser (Chrome, Firefox, or Edge)
3. Have stable internet connection

### Step 2: Start Coding
1. Click this button to start your development environment: [![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/YOUR_REPO_HERE)
2. Wait 2-3 minutes while everything gets set up automatically
3. You'll see VS Code in your browser when it's ready!

### Step 3: Create Your Wallet
1. In the terminal at the bottom of VS Code, type:
   ```bash
   ./scripts/setup-wallet.sh
   ```
2. Follow the prompts to create your wallet
3. Save your mnemonic phrase somewhere safe!

### Step 4: Get Test Tokens
1. Copy your wallet address
2. Go to the MANTRA testnet faucet (link will be provided)
3. Paste your address and request tokens

### Step 5: Deploy Hello World Contract
1. Click the "Build & Deploy" button in VS Code
2. Wait for compilation to complete
3. Your contract will be deployed automatically!

## 🔧 For Instructors

### Before the Session
1. Fork this repository
2. Update the GitPod button URL in README.md with your repository URL
3. Test the environment by clicking the GitPod button yourself
4. Make sure all scripts work as expected

### During the Session
1. Share the repository link with students
2. Guide them to click the GitPod button
3. Walk through the steps above
4. Use the pre-built UI buttons for common operations

## 🆘 Need Help?

- Check the [Common Issues](SETUP.md#common-issues--solutions) section
- Look for error messages in the terminal
- Ask your instructor for help

## 📚 What's Included?

- ✅ Rust & CosmWasm development environment
- ✅ MANTRA Chain tools and CLI
- ✅ VS Code with essential extensions
- ✅ Example Hello World contract
- ✅ Helper scripts for common tasks

## 🛠️ Available Commands

All commands are available through the UI buttons, but you can also use these terminal commands:

```bash
# Create new wallet
./scripts/setup-wallet.sh

# Build contract
./scripts/build-contract.sh

# Deploy contract
./scripts/deploy-contract.sh

# Test contract
./scripts/test-contract.sh
```

## 🎉 Next Steps

After completing the Hello World example:
1. Explore the contract code in `contracts/hello-world/`
2. Try modifying the contract
3. Learn about CosmWasm message handling
4. Build your own contract!
