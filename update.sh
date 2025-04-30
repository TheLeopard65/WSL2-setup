#!/bin/bash

# Checking if user is root
if [ $(whoami) != "root" ]; then
    echo "SYNTAX: PLEASE RUN THIS SCRIPT WITH ROOT/SUDO PRIVILEGES !!"
    exit 1
fi

echo "[###@] STARTING WSL2 KALI-LINUX SETUP (DEVELOPED BY @TheLeopard65) [@###]"
echo "[#] BEFORE PROCEEDING FURTHER, MAKE SURE TO THOROUGHLY ANALYZE THE CODE [#]"

# Updating and Upgrading for the WSL2 & Installing Normal CLI Kali specific Tools Installed for Pentesting and PWN/BIN/Reverse/WEB
apt update -y && apt upgrade -y
apt install -y wget curl whois openvpn wordlists webshells exploitdb nmap dpkg gobuster john hydra hashcat python3 sqlmap netcat-traditional metasploit-framework nikto checksec git git-all plocate build-essential bloodhound wpscan hashid powershell smbclient pwncat enum4linux freerdp2-x11 npm nodejs postgresql crackmapexec impacket-scripts evil-winrm
apt install -y windows-binaries netdiscover chisel ncat git-lfs python3-dev libssl-dev libwine cewl radare2 mimikatz wfuzz ffuf jadx apktool faketime binwalk steghide sublist3r feroxbuster libimage-exiftool-perl openjdk-11-jdk zbar-tools pdf-parser foremost ffmpeg iptables cme python3-pip pipx davtest cadaver sqlite3 default-mysql-server ltrace strace

# Final Update and Upgrade
apt update -y && apt upgrade -y
apt full-upgrade -y
apt autoremove -y
updatedb

# Move to Home Directory
clear
cd
