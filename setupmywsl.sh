#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "SYNTAX: Please Run this script as ROOT or using SUDO"
    exit 0
fi

# Updating and Upgrading for the WSL2
apt update -y && apt upgrade -y
apt install -y wget terminator openvpn firefox-esr wordlists webshells burpsuite ghidra wireshark nmap netdiscover libimage-exiftool-perl wafw00f sublist3r tor exploitdb recon-ng torbrowser-launcher dpkg clamav gobuster john network-manager feroxbuster eog aircrack-ng steghide hashcat sherlock nmap python3 theharvester hping3 dirsearch gobuster dirbuster autopsy masscan maltego chisel foremost pdf-parser ncat reaver wifite netcat-traditional sqlmap zbar-tools
apt install -y metasploit-framework iptables nikto checksec ffmpeg plocate hydra binwalk git python3-dev libssl-dev libffi-dev build-essential libwine amass openvas-scanner trufflehog bloodhound trivy cme responder wfuzz wpscan pacu kismet-core beef gophish evilginx2 adb smbclient dnsenum curl whois pwncat sniffglue rizin sslh cewl dnsrecon httprobe hashid sslyze unicornscan mimikatz pompem pftools bash-completion neofetch radare2 snapd npm nodejs openjdk-11-jdk enum4linux freerdp2-x11 smbclient nbtscan postgresql ffuf tshark powershell impacket-scripts evil-winrm crackmapexec

# Installing important pips
apt install python3-pip pipx
apt install python3-flask python3-flask-socketio python3-bcrypt python3-requests python3-flask-restful python3-bs4 python3-numpy python3-pandas python3-matplotlib python3-paramiko python3-socketio python3-nmap python3-lxml python3-selenium python3-yaml python3-pycryptodome python3-geopy python3-colormap python3-termcolor python3-scapy python3-shodan python3-pyqt5 python3-tk python3-pydantic python3-cryptography python3-sqlalchemy python3-opencv python3-pil python3-pyautogui python3-soundfile python3-pynput python3-pwntools python3-capstone python3-corepywrap python3-impacket
pipx install websocket-client pwnedpasswords geocoder ipython impacket tqdm pytesseract pytest pyinstaller

# Setting up your Git and Github Configurations Globally if Parameter "git" is provided.
if [[ -n "$1" && "$1" == "git" ]]; then
    git config --global user.name "<GITHUB-USERNAME>"
    git config --global user.email "<GITHUB-USED-EMAIL@gmail.com>"
fi

# Setting Up Systemd and Installing VS-Code
if [ ! -f /etc/wsl.conf ] || ! grep -q "systemd=true" /etc/wsl.conf; then
	if [ ! -f /etc/wsl.conf ]; then
	    touch /etc/wsl.conf
	fi
    echo "[boot]" >> /etc/wsl.conf
    echo "systemd=true" >> /etc/wsl.conf
	systemctl enable snapd
	echo "[#] Please Exit the WSL and the Following Commands on the CMD."
	echo "powershell.exe wsl --update"
	echo "powershell.exe wsl --shutdown"
	echo "[#] Then, Restart WSL and re-run \"setupmywsl.sh\" script."
    exit 0
fi
systemctl enable snapd
systemctl enable postgresql

# Updating some Important Databases
gzip -d /usr/share/wordlists/rockyou.txt.gz
searchsploit -u
nmap --script-updatedb
greenbone-nvt-sync
freshclam
pipx ensurepath

# Making Nano shortcuts and expeierence more windows like:
cp ./nanorc /etc/nanorc

# Making Terminal like compact and custom:
cp ./bashrc /home/$SUDO_USER/.bashrc
cp ./bashrc /root/.bashrc
source ~/.bashrc

# Update and Upgrade
apt update -y && apt upgrade -y

# Installing Ipinfo-CLI && Wayback-Curls
cd /opt
curl -Ls https://github.com/ipinfo/cli/releases/download/ipinfo-3.3.1/deb.sh | sh
go install github.com/tomnomnom/waybackurls@latest

# Installing CloudSploit
cd /opt
git clone https://github.com/aquasecurity/cloudsploit.git
cd cloudsploit
npm install
./index.js -h

# Installing PIMPMYKALI
cd /opt
git clone https://github.com/Dewalt-arch/pimpmykali.git
cd pimpmykali
sudo ./pimpmykali.sh | echo N

# Installing LinkFinder
cd /opt
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install

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
cd sstv
python3 setup.py install

# Installing Volatility3
cd /opt
git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3
python3 setup.py build
python3 setup.py install

# Finel Update and Upgrade
apt update -y && apt upgrade -y
apt full-upgrade -y
apt autoremove -y
updatedb

# Move to Home Directory and run neofetch
clear
cd
neofetch
