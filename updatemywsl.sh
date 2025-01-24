#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 1
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y wget terminator openvpn firefox-esr wordlists webshells burpsuite ghidra wireshark nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb recon-ng torbrowser-launcher dpkg clamav gobuster john network-manager feroxbuster eog aircrack-ng steghide hashcat sherlock nmap python3 theharvester hping3 dirsearch gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser ncat reaver wifite netcat-traditional sqlmap zbar-tools
apt install -y metasploit-framework iptables nikto checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient dnsenum curl whois pwncat sniffglue rizin sslh cewl dnsrecon httprobe hashid sslyze unicornscan mimikatz pompem pftools bash-completion neofetch radare2 snapd npm nodejs

# Installing important pips
apt install python3-pip pipx
apt install python3-flask python3-flask-socketio python3-bcrypt python3-requests python3-flask-restful python3-bs4 python3-numpy python3-pandas python3-matplotlib python3-paramiko python3-socketio python3-nmap python3-lxml python3-selenium python3-yaml python3-pycryptodome python3-geopy python3-colormap python3-termcolor python3-scapy python3-shodan python3-pyqt5 python3-tk python3-pydantic python3-cryptography python3-sqlalchemy python3-opencv python3-pil python3-pyautogui python3-soundfile python3-pynput python3-pwntools python3-capstone python3-corepywrap
pipx install websocket-client pwnedpasswords geocoder ipython impacket tqdm pytesseract pytest pyinstaller

# Updating some Important Databases
gzip -d /usr/share/wordlists/rockyou.txt.gz
searchsploit -u
nmap --script-updatedb
greenbone-nvt-sync
freshclam
pipx ensurepath

# Finel Update and Upgrade
apt update -y && apt upgrade -y
apt full-upgrade -y
apt autoremove -y
updatedb
neofetch
