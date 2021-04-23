#!/bin/bash

#!/bin/bash

sudo apt update
sudo apt install -y curl apt-transport-https
curl -sSL https://packages.microsoft.com/keys/microsoft.asc -o microsoft.asc
sudo apt-key add microsoft.asc

rm microsoft.asc

echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"  | sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt update

sudo apt install -y code
