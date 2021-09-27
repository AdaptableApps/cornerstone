#!/bin/bash

# todo for linux
# echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --sdk --force"
# sudo ./dotnet-core-uninstall remove --all-previews --sdk --force

# todo for linux
# echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --runtime --force"
# sudo ./dotnet-core-uninstall remove --all-previews --runtime --force

echo "Running: "
sudo dotnet workload uninstall wasm-tools

echo "Running: sudo ./dotnet-install.sh -version 6.0.100-rc.1.21463.6 --install-dir /usr/local/share/dotnet"
sudo ./dotnet-install.sh -version 6.0.100-rc.1.21463.6 --install-dir /usr/local/share/dotnet

echo "Running: sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.1.21463.6"
sudo dotnet workload install wasm-tools --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --sdk-version 6.0.100-rc.1.21463.6

echo "Done"