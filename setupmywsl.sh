#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Elevate yourself to Roor First"
    exit 1
fi

# Updating and Upgrading for the WSL2
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y burpsuite ghidra wireshark nmap netdiscover exiftool tor recon-ng torbrowser-launcher dpkg john network-manager eog aircrack-ng steghide scapy hashcat python3 theharvester hping3 gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser  ncat reaver wifite netcat-traditional sqlmap zbar-tools metasploit-framework iptables python3-pip nikto  checksec ffmpeg plocate hydra binwalk git python3-pip python3-dev libssl-dev libffi-dev build-essential libwine winericks

# Installing important pips
pip install flask flask_socketio bcrypt pycryptodome python-socketio numpy tk opencv-python websocket-client pyinstaller soundfile sounddevice requests pillow pyautogui pynput pwntools yara-python capstone leechcorepyc gcsfs s3fs pefile pwnlib

# Installing PIMPMYKALI
cd /opt
git clone https://github.com/Dewalt-arch/pimpmykali.git
cd pimpmykali
sudo ./pimpmykali.sh | echo N
cd ~

# Installing NESSUS
cd /var/cache/apt/archive/
wget -O nessus.deb https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/11671/download?i_agree_to_tenable_license_agreement=true
sudo dpkg -i nessus.deb
cd ~

# Installing DEEPSOUND
wget -O /tmp/deepsound.msi http://jpinsoft.net/DeepSound/Download.aspx?Download=LastVersion
sudo wine msiexec /i /tmp/deepsound.msi
cd ~

# Installing SSTV Decoder
cd /opt
git clone https://github.com/colaclanth/sstv.git
python3 setup.py install
cd ~

# Installing Volatility3
cd /opt
git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3
python3 setup.py build 
python3 setup.py install
cd ~

# Installing Radare2
cd /opt
git clone https://github.com/radareorg/radare2
cd radare2
bash sys/install.sh
cd ~

# Finel Update and Upgrade
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
