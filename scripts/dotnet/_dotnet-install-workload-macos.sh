#!/usr/bin/env bash

echo "Running: sudo dotnet workload uninstall macos"
sudo dotnet workload uninstall macos

sudo dotnet workload install macos --source https://pkgs.dev.azure.com/dnceng/public/_packaging/dotnet6/nuget/v3/index.json --skip-manifest-update --include-previews