#!/bin/bash

echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --sdk --force"
sudo ./dotnet-core-uninstall remove --all-previews --sdk --force

echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --runtime --force"
sudo ./dotnet-core-uninstall remove --all-previews --runtime --force

echo "Running: "
sudo dotnet workload uninstall macos

echo "Running: "
sudo dotnet workload uninstall wasm-tools

echo "Running: sudo ./dotnet-install.sh -version 6.0.100-rc.2.21505.1 --install-dir /usr/local/share/dotnet"
sudo ./dotnet-install.sh -version 6.0.100-rc.2.21505.1 --install-dir /usr/local/share/dotnet

echo "Running: sudo dotnet workload install macos --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.2.21505.1"
sudo dotnet workload install macos --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.2.21505.1

echo "Running: sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.2.21505.1"
sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.2.21505.1

echo "Done"