#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 1
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y terminator openvpn firefox-esr wordlists webshells burpsuite ghidra wireshark nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb recon-ng python3-shodan torbrowser-launcher dpkg clamav gobuster john network-manager ipinfo feroxbuster eog aircrack-ng steghide python3-scapy hashcat sherlock python3 theharvester hping3 dirsearch gobuster dirbuster autopsy masscan maltego chisel cloudsploit foremost pdf-parser ncat reaver wifite netcat netcat-traditional sqlmap zbar-tools
apt install -y metasploit-framework iptables nikto  checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient dnsenum curl whois pwncat pypdf sniffglue linkfinder rizin sslh cewl dnsrecon vulscan httprobe waybackurls hashid sslyze unicornscan mimikatz scapy pompom fscan bash-completion

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

# Finel Update and Upgrade
apt update -y && apt upgrade -y
apt full-upgrade -y
apt autoremove -y
updatedb
