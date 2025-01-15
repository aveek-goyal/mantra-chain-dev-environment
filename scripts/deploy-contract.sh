#!/bin/bash

echo "🚀 Deploying contract..."
echo

# Source environment variables
source ../contracts/mantrachaind-cli.env

# Check if wallet exists
if ! mantrachaind keys show wallet > /dev/null 2>&1; then
    echo "❌ No wallet found! Please run setup-wallet.sh first"
    exit 1
fi

# Deploy the contract
echo "📤 Uploading contract to testnet..."
RES=$(mantrachaind tx wasm store artifacts/hello_world.wasm --from wallet $TXFLAG -y)
CODE_ID=$(echo $RES | jq -r '.logs[0].events[-1].attributes[0].value')

echo "Contract uploaded! Code ID: $CODE_ID"

# Instantiate the contract
echo "📝 Instantiating contract..."
INIT='{}'
mantrachaind tx wasm instantiate $CODE_ID "$INIT" --from wallet --label "hello world" $TXFLAG -y

echo
echo "✅ Contract deployed successfully!"
echo "You can now interact with your contract!"
