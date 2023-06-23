#!/bin/bash

# Download and Install Tailscale
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/buster.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/tailscale.gpg
echo "deb [arch=arm64] https://pkgs.tailscale.com/stable/raspbian buster main" | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt update
sudo apt install tailscale
