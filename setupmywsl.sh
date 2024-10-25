#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 1
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y terminator openvpn firefox-esr wordlists webshells burpsuite ghidra wireshark nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb recon-ng python3-shodan torbrowser-launcher dpkg clamav gobuster john network-manager ipinfo feroxbuster eog aircrack-ng steghide python3-scapy hashcat sherlock python3 theharvester hping3 dirsearch gobuster dirbuster autopsy masscan maltego chisel cloudsploit foremost pdf-parser ncat reaver wifite netcat netcat-traditional sqlmap zbar-tools
apt install -y metasploit-framework iptables nikto  checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient dnsenum curl whois pwncat pypdf sniffglue linkfinder rizin sslh cewl dnsrecon vulscan httprobe waybackurls hashid sslyze unicornscan mimikatz scapy pompom fscan

# Installing important pips
apt install python3-pip pip
pip install flask flask_socketio websocket-client bcrypt requests-html flask-restful beautifulsoup4 pwnedpasswords fuzzing geocoder pandas matplotlib lxml selenium PyYAML pycrypto geopy ipython impacket colorama termcolor tqdm paramiko pytesseract pyqt5 pydantic pytest cryptography pysocks scrapy pycryptodome python-nmap python-socketio numpy pytest tk sqlalchemy opencv-python websocket-client pyinstaller soundfile sounddevice requests pillow pyautogui pynput pwntools yara-python capstone leechcorepyc gcsfs s3fs pefile pwnlib pwn

# Updating some Important Databases
gzip -d /usr/share/wordlists/rockyou.txt.gz
searchsploit -u
msfupdate
nmap --script-updatedb
greenbone-nvt-sync
freshclam

# Making Nano shortcuts and expeierence more windows like:
cp ./nanorc /etc/nanorc

# Update and Upgrade
apt update -y && apt upgrade -y

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
updatedb
