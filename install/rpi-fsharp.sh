# https://levelup.gitconnected.com/install-the-net-6-0-sdk-on-a-raspberry-pi-in-two-easy-steps-27993c1bd68d 
# for C#, F# 
curl -sSL https://dot.net/v1/dotnet-install.sh | bash

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
