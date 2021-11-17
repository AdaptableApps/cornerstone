#!/bin/bash

# todo for linux
# echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --sdk --force"
# sudo ./dotnet-core-uninstall remove --all-previews --sdk --force

# todo for linux
# echo "Running: sudo ./dotnet-core-uninstall remove --all-previews --runtime --force"
# sudo ./dotnet-core-uninstall remove --all-previews --runtime --force

echo "Running: sudo ./dotnet-install.sh -version 6.0.100-rc.2.21505.1 --install-dir /usr/local/share/dotnet"
sudo ./dotnet-install.sh -version 6.0.100-rc.2.21505.1 --install-dir /usr/local/share/dotnet

echo "Done"