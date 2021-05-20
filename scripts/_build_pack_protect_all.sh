#!/usr/bin/env bash

export CORNERSTONE_SDKs_VERSIONNO=1.0.3.45

echo "CORNERSTONE_SDKs_VERSIONNO"
echo $CORNERSTONE_SDKs_VERSIONNO

##_____________________________________________________________________________________________________________
CSASSEMBLYNAME=aa.cs.client.net

cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

echo "packing " + $CSASSEMBLYNAME
dotnet restore $CORNERSTONE_ROOT/$CSASSEMBLYNAME/$CSASSEMBLYNAME.sln

echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
$CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

##_____________________________________________________________________________________________________________
PREVIOUSCSASSEMBLYNAME=$CSASSEMBLYNAME
CSASSEMBLYNAME=aa.cs.client.xamarin.forms.net

cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

echo "packing " + $CSASSEMBLYNAME
dotnet restore $CORNERSTONE_ROOT/$CSASSEMBLYNAME/$CSASSEMBLYNAME.sln

echo dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO
dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO

echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
$CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

##_____________________________________________________________________________________________________________
PREVIOUSCSASSEMBLYNAME=$CSASSEMBLYNAME
CSASSEMBLYNAME=aa.cs.client.xamarin.iOS

cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

echo "packing " + $CSASSEMBLYNAME
dotnet restore

echo dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO
dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO -f .net5.0-iOS

echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
$CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

cd $CORNERSTONE_SDK