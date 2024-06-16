#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Elevate yourself to Roor First"
    exit 1
fi

# Updating and Upgrading for the WSL2
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y burpsuite ghidra wireshark nmap netdiscover exiftool tor
sudo apt install -y torbrowser-launcher dpkg john network-manager eog aircrack-ng
sudo apt install -y steghide scapy hashcat python3 theharvester hping3 gobuster
sudo apt install -y dirbuster autopsy masscan maltego chisel foremost pdf-parser 
sudo apt install -y ncat reaver wifite netcat-traditional sqlmap zbar-tools
sudo apt install -y metasploit-framework iptables python3-pip nikto  checksec
sudo apt install -y ffmpeg mlocate hydra binwalk git python3-pip python3-dev
sudo apt install -y libssl-dev libffi-dev build-essential wine32 winericks

# Installing important pips
pip install flask flask_socketio bycrypt cryptodome python-socketio numpy tk
pip install opencv-python websocket-client pyinstaller soundfile sounddevice
pip install requests pillow pyautogui pynput pwntools yara-python capstone
pip install leechcorepyc gcsfs s3fs pefile pwnlib

# Finel Update and Upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
