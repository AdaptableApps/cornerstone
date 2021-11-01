#!/usr/bin/env bash

echo "Running: sudo dotnet workload uninstall wasm-tools"
sudo dotnet workload uninstall wasm-tools

echo "Running: sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --skip-manifest-update --include-previews"
sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --skip-manifest-update --include-previews