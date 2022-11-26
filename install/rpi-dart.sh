#install dart on Raspberry PI
# https://www.tutorialkart.com/dart/install-dart-on-windows/

https://dart.dev/get-dart/archive
download https://storage.googleapis.com/dart-archive/channels/stable/release/2.18.5/sdk/dartsdk-linux-arm-release.zip

unzip dartsdk-linux-arm-release.zip
cd dart-sdk
mkdir /usr/lib/dart/
mv * /usr/lib/dart/

export PATH="$PATH:/usr/lib/dart/bin"
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile