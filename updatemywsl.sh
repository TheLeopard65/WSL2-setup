#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 1
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y burpsuite ghidra wireshark pip nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb theharvester recon-ng python3-shodan torbrowser-launcher dpkg john network-manager feroxbuster eog aircrack-ng steghide python3-scapy hashcat python3 theharvester hping3 gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser  ncat reaver wifite netcat-traditional sqlmap zbar-tools metasploit-framework iptables nikto  checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient

# Installing important pips
apt install python3-pip pip pip3
pip install flask flask_socketio bcrypt pycryptodome python-socketio numpy tk opencv-python websocket-client pyinstaller soundfile sounddevice requests pillow pyautogui pynput pwntools yara-python capstone leechcorepyc gcsfs s3fs pefile pwnlib

# Finel Update and Upgrade
apt update -y && apt upgrade -y
