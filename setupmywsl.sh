#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Elevate yourself to Root First"
    exit 1
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y openvpn firefox-esr wordlists burpsuite ghidra wireshark nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb theharvester recon-ng python3-shodan torbrowser-launcher dpkg clamav john network-manager feroxbuster eog aircrack-ng steghide python3-scapy hashcat python3 theharvester hping3 gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser  ncat reaver wifite netcat-traditional sqlmap zbar-tools metasploit-framework iptables nikto  checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient

# Installing important pips
apt install python3-pip pip
pip install flask flask_socketio bcrypt beautifulsoup4 impacket paramiko cryptography pysocks scrapy pycryptodome python-nmap python-socketio numpy pytest tk sqlalchemy opencv-python websocket-client pyinstaller soundfile sounddevice requests pillow pyautogui pynput pwntools yara-python capstone leechcorepyc gcsfs s3fs pefile pwnlib

# Updating some Important Databases
gzip -d /usr/share/wordlists/rockyou.txt.gz
searchsploit -u
msfupdate
nmap --script-updatedb
greenbone-nvt-sync
freshclam

# Installing PIMPMYKALI
cd /opt
git clone https://github.com/Dewalt-arch/pimpmykali.git
cd pimpmykali
sudo ./pimpmykali.sh | echo N

# Installing NESSUS
cd /var/cache/apt/archive/
wget -O nessus.deb https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/11671/download?i_agree_to_tenable_license_agreement=true
sudo dpkg -i nessus.deb

# Installing DEEPSOUND
cd /tmp/
wget -O /tmp/deepsound.msi http://jpinsoft.net/DeepSound/Download.aspx?Download=LastVersion
sudo wine msiexec /i /tmp/deepsound.msi

# Installing SSTV Decoder
cd /opt
git clone https://github.com/colaclanth/sstv.git
python3 setup.py install

# Installing Volatility3
cd /opt
git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3
python3 setup.py build 
python3 setup.py install

# Installing Radare2
cd /opt
git clone https://github.com/radareorg/radare2
cd radare2
bash sys/install.sh

# Finel Update and Upgrade
apt update -y && apt upgrade -y
apt full-upgrade -y
apt autoremove -y
