#!/usr/bin/env bash

# echo "Running: sudo dotnet workload uninstall wasm-tools"
# sudo dotnet workload uninstall wasm-tools

echo "Running: sudo dotnet workload install wasm-tools --skip-manifest-update"
sudo dotnet workload install wasm-tools --skip-manifest-update