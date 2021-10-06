#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install node
sudo yum install git -y
git clone https://github.com/HikkusT/mc714.git
cd mc714/
npm install
node app.js