# adaptableapps-cornerstone-sdk

## Introduction

Cornerstone is a low-code, off-line capable, cloud-connected, multi-platform framework that allows building apps in a fraction of the time that work on all devices

This repo is for distributing cornerstone sdk's while in beta

Note: these instructions will change once the packages and tools go live on nuget

### Getting started

Development of systems built on Cornerstone is supported on macOS, Linux and Windows 10 operating systems.

Cornerstone is primarily built on the dotnet framework, which allows a Cornerstone built system to target all end-user major operating systems either through native and wasm apps, or in the case of linux wasm only.

`Note:`

- See below for detailed compatibility, as not all platforms projects can be built on all operating systems due to restrictions in the build tools that are beyond our control
- Please ensure all files you create are encoded as `UTF-8` and `LF` line endings for cross platform compatibility.

### Setting up Windows for development

dotnet 5.0.101 sdk must be installed:
x64 : https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-5.0.100-windows-x64-installer
x86 : https://dotnet.microsoft.com/download/dotnet/thank-you/sdk-5.0.100-windows-x86-installer

`Note:`

- Because of Windows path length limitations it is recommended your code is checked out into folders in the root of your chosen hard drive e.g. `c:\` or `d:\` etc

#### npm

npm (latest lts version) needs to be installed:
https://nodejs.org/en/

#### Regional Settings

Adjust the following regional settings in Windows settings:

- Change the decimal separator to . (i.e. the full stop character) if it is not that already

#### Git

Ensure the git cli is installed for your chosen development operating system

Then clone this git repo:
https://github.com/AdaptableApps/adaptableapps-cornerstone-sdk.git

Checkout the `beta` branch

Decide on a `system code` for your system e.g. if you are creating creating a CRM system and your company is called Acme then your code would be `ACRM`. It is used wherever you see `{SystemCode}` below.

Create a repo for your system in github or similar.

Clone that repo on your machine.

You will need to set the following environment variables in your ~/.bashrc or ~/.zshrc file:

- CORNERSTONE_SDK

```
This should point to whereever you checked out this repo e.g. c:\adaptableapps-cornerstone-sdk
```

- {SystemCode}\_ROOT

```
This should point to whereever you checked out your system's repo
```

In the cloned repo folder on your machine create `src` and `scripts` folders.

Create your projects in the the `src` folder.

Create a folder in your `src` folder for the Cornerstone code gen data spreadsheet:

```
%{SystemCode}_ROOT%\{SystemCode}.code.gen\Data
```

Then copy the file `%CORNERSTONE_SDK%\codegen\{SystemCode}.code.gen.data_{SystemCode}_0000000_1000.xlsx`

Paste the file to your folder `%{SystemCode}_ROOT%\{SystemCode}.code.gen\Data\`

In the `%{SystemCode}_ROOT%\scripts` folder add a script called `cscli_codegen_{SystemCode}_release.bat` with the following text :

```
dotnet "%CORNERSTONE_SDK%\tools\aa.cs.devops.cscli.net\bin\Release\net5.0\cscli.dll" action=codegen codegendatafile="%{SystemCode}_ROOT%\{SystemCode}.code.gen\Data\{SystemCode}.code.gen.data_{SystemCode}_0000000_1000.xlsx" productrootpath=%{SystemCode}_ROOT%
```

Fill in the data in the file `%CORNERSTONE_SDK%\codegen\{SystemCode}.code.gen.data_{SystemCode}_0000000_1000.xlsx`

Then you can run the code generator to generate all the code in your Cornerstone system's projects:

```
%{SystemCode}_ROOT%\scripts\cscli_codegen_{SystemCode}_release.bat
```
