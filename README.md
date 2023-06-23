***important***

This repository includes two Bash code files that provide the necessary commands for installing and configuring Tailscale on a Raspberry Pi.
```
- [bash1.sh](bash1.sh): This file contains the commands to update your Raspberry Pi by running `sudo apt update` and `sudo apt upgrade`.
```
```
- [bash2.sh](bash2.sh): This file contains the commands to download and install Tailscale on your Raspberry Pi by using `curl`, `gpg`, and `apt`.
````
*** follow these steps:***

1. Download the code files from this repository.
2. Connect to your Raspberry Pi and open a terminal.
3. Run the commands in `bash1.sh` to update your Raspberry Pi.
4. Run the commands in `bash2.sh` to download and install Tailscale.

Make sure to execute the commands with appropriate privileges, such as using `sudo`, as required.

Note: This readme assumes you have a Raspberry Pi running Raspbian OS and an active internet connection.


Tailscale Installation Guide for Raspberry Pi


This guide provides step-by-step instructions to install and configure Tailscale on a Raspberry Pi for secure networking and remote access.

## Prerequisites

- Raspberry Pi running Raspbian OS (Buster or later)
- Internet connection

## Installation Steps

### 1. Update Your Raspberry Pi

Before installing Tailscale, it's recommended to update your Raspberry Pi to ensure you have the latest packages and dependencies.
```
sudo apt update
sudo apt upgrade
```
2. Download and Install Tailscale
To install Tailscale, execute the following commands in a terminal:
```
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/buster.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/tailscale.gpg
echo "deb [arch=arm64] https://pkgs.tailscale.com/stable/raspbian buster main" | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt update
sudo apt install tailscale
```
3. Initialize Tailscale
After installing Tailscale, you need to initialize it and create a new configuration. Run the following command:
```
sudo tailscale up
```

Make a note of the generated key as you'll need it for authentication.

4. Authenticate Your Device
To authenticate your Raspberry Pi with your Tailscale account, follow these steps:

Open a web browser on any device.
Navigate to https://login.tailscale.com/auth/signup/device.
Enter the key generated in the previous step and follow the on-screen instructions to authenticate your device.

5. Start Tailscale Service
To start the Tailscale service and enable it to run on system boot, execute the following command:
```
sudo systemctl enable --now tailscaled
```
6. Test Tailscale Connection
To verify that Tailscale is working correctly on your Raspberry Pi, use the following command:
```
tailscale status
```
This command displays the current status of Tailscale and the IP address assigned to your 
device.

Usage
Once Tailscale is successfully installed and configured on your Raspberry Pi, you can securely connect to it from other devices using Tailscale.

Troubleshooting
If you encounter any issues during the installation or configuration process, refer to the official Tailscale documentation for troubleshooting tips and additional information.

Contributing
If you find any problems with the installation guide or have suggestions for improvement, please feel free to contribute by opening an issue or submitting a pull request.

License
This project is licensed under the MIT License.

