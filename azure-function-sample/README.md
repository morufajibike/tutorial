## Overview

This is a sample project for azure functions.

### Steps
See [Azure documentation(https://learn.microsoft.com/en-us/azure/azure-functions/functions-run-local?tabs=v4%2Cmacos%2Ccsharp%2Cportal%2Cbash)] for more information

- Download Dotnet libraries
    ```
    Vist: https://aka.ms/dotnet-core-applaunch?framework=Microsoft.NETCore.App&framework_version=5.0.3&arch=x64&rid=osx.11.2-x64
    Execute: brew install --cask dotnet-sdk

    ```
- Install the Azure Functions Core Tools
```
brew tap azure/functions
brew install azure-functions-core-tools@4
# if upgrading on a machine that has 2.x or 3.x installed:
brew link --overwrite azure-functions-core-tools@4
```
- Create a function with func tool
    - func init azure-function-sample --worker-runtime python


- Create a Docker image for your function app.
```
func init my-function-app --worker-runtime dotnet
func new --name HttpExample --template "HTTP trigger"
dotnet build
docker build -t my-function-app .
```