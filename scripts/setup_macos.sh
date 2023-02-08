#!/bin/bash

CTLPTL_VERSION="0.8.15"

# install system dependencies
brew install \
    curl     \
    ctlptl   \
    kind     \
    tilt     \
    kubernetes-cli;

brew install --cask \
    docker;

# k8 doesn't work with swap on, apparently
sudo swapoff -a

# install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install all project dependencies
# cargo build