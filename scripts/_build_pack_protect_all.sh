#!/usr/bin/env bash

export CORNERSTONE_SDKs_VERSIONNO=1.0.3.48

echo "CORNERSTONE_SDKs_VERSIONNO"
echo $CORNERSTONE_SDKs_VERSIONNO

##_____________________________________________________________________________________________________________
CSASSEMBLYNAME=aa.cs.core.net

echo "packing " + $CSASSEMBLYNAME

cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh
$CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh

echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
$CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

# ##_____________________________________________________________________________________________________________
# CSASSEMBLYNAME=aa.cs.client.net

# echo "packing " + $CSASSEMBLYNAME

# cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

# ##_____________________________________________________________________________________________________________
# PREVIOUSCSASSEMBLYNAME=$CSASSEMBLYNAME
# CSASSEMBLYNAME=aa.cs.client.xamarin.forms.net

# echo "packing " + $CSASSEMBLYNAME

# cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh

# # echo dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO
# # dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

# ##_____________________________________________________________________________________________________________
# PREVIOUSCSASSEMBLYNAME=$CSASSEMBLYNAME
# CSASSEMBLYNAME=aa.cs.client.xamarin.iOS

# echo "packing " + $CSASSEMBLYNAME

# cd $CORNERSTONE_ROOT/$CSASSEMBLYNAME

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_restore.sh

# # echo dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO
# # dotnet add $CSASSEMBLYNAME.csproj package $PREVIOUSCSASSEMBLYNAME -v $CORNERSTONE_SDKs_VERSIONNO -f .net5.0-iOS

# echo $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh
# $CORNERSTONE_ROOT/$CSASSEMBLYNAME/_build_protect_pack.sh

cd $CORNERSTONE_SDK