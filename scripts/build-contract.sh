#!/bin/bash

echo "🏗️  Building contract..."
echo

# Navigate to contract directory
cd ../contracts

# Source environment variables
source mantrachaind-cli.env

# Build the contract
echo "📦 Compiling contract..."
cargo build --target wasm32-unknown-unknown --release

# Optimize the contract
echo "⚡ Optimizing contract..."
docker run --rm -v "$(pwd)":/code \
  --mount type=volume,source="$(basename "$(pwd)")_cache",target=/target \
  --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry \
  cosmwasm/optimizer:0.16.0

echo
echo "✅ Contract built and optimized successfully!"
echo "📁 Your optimized contract is in the artifacts/ directory"
