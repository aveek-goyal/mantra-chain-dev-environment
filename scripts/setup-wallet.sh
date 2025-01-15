#!/bin/bash

echo "🏁 Starting wallet setup..."
echo

# Source environment variables
source ../contracts/mantrachaind-cli.env

# Create wallet
echo "📝 Creating your wallet..."
mantrachaind keys add wallet

echo
echo "✨ Wallet created successfully!"
echo
echo "⚠️  IMPORTANT: Make sure you have saved your mnemonic phrase somewhere safe!"
echo
echo "💰 To get test tokens:"
echo "1. Copy your wallet address (shown above)"
echo "2. Go to MANTRA testnet faucet: ${FAUCET}"
echo "3. Paste your address and request tokens"
echo
echo "✅ Setup complete! You're ready to deploy contracts!"
