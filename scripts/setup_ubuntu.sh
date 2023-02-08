#!/bin/bash

CTLPTL_VERSION="0.8.15"

# install system dependencies
sudo apt install -y            \
    docker-ce                  \
    curl                       ;

sudo snap install --classic    \
    kubectl                    ;

# install ctlptl
curl -fsSL https://github.com/tilt-dev/ctlptl/releases/download/v$CTLPTL_VERSION/ctlptl.$CTLPTL_VERSION.linux.x86_64.tar.gz \
    | sudo tar -xzv -C /usr/local/bin ctlptl

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# install tilt
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash

# k8 doesn't work with swap on, apparently
sudo swapoff -a

# install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install all project dependencies
# cargo build