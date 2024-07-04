#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Elevate yourself to Roor First"
    exit 1
fi

# Updating and Upgrading for the WSL2
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y burpsuite ghidra wireshark nmap netdiscover exiftool tor theharvester recon-ng python3-shodan torbrowser-launcher dpkg john network-manager eog aircrack-ng steghide scapy hashcat python3 theharvester hping3 gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser  ncat reaver wifite netcat-traditional sqlmap zbar-tools metasploit-framework iptables python3-pip nikto  checksec ffmpeg plocate hydra binwalk git python3-pip python3-dev libssl-dev libffi-dev build-essential libwine winericks

# Installing important pips
pip install flask flask_socketio bcrypt pycryptodome python-socketio numpy tk opencv-python websocket-client pyinstaller soundfile sounddevice requests pillow pyautogui pynput pwntools yara-python capstone leechcorepyc gcsfs s3fs pefile pwnlib

# Finel Update and Upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
