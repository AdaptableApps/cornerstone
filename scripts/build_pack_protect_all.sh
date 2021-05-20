#!/usr/bin/env bash

export CORNERSTONE_SDKs_VERSIONNO=1.0.3.37

echo "CORNERSTONE_SDKs_VERSIONNO"
echo $CORNERSTONE_SDKs_VERSIONNO

dotnet restore $CORNERSTONE_ROOT/aa.cs.client.net/aa.cs.client.net.sln
echo $CORNERSTONE_ROOT/aa.cs.client.net/BuildProtectPack.sh
$CORNERSTONE_ROOT/aa.cs.client.net/BuildProtectPack.sh

cd $CORNERSTONE_ROOT/aa.cs.client.xamarin.forms.net

# echo dotnet remove aa.cs.client.xamarin.forms.net.csproj package aa.cs.client.net
# dotnet remove aa.cs.client.xamarin.forms.net.csproj package aa.cs.client.net

dotnet restore aa.cs.client.xamarin.forms.net.sln

echo dotnet add aa.cs.client.xamarin.forms.net.csproj package aa.cs.client.net -v $CORNERSTONE_SDKs_VERSIONNO
dotnet add aa.cs.client.xamarin.forms.net.csproj package aa.cs.client.net -v $CORNERSTONE_SDKs_VERSIONNO

echo $CORNERSTONE_ROOT/aa.cs.client.xamarin.forms.net/BuildProtectPack.sh
$CORNERSTONE_ROOT/aa.cs.client.xamarin.forms.net/BuildProtectPack.sh

cd $CORNERSTONE_SDK