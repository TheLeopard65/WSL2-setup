**WSL Setup and Maintenance Scripts**
=====================================

This repository contains a set of scripts designed to set up, update, and maintain a Windows Subsystem for Linux (WSL) environment. Below is a brief description of each script provided in this repository. The script is intended to be run with a root password as an argument.

### `Setupmywsl.sh`

This script performs a comprehensive setup of a WSL2 environment, including:

- **System Update and Upgrade**: Updates and upgrades the system packages.
- **Package Installation**: Installs a wide range of tools and utilities for security, networking, and development, such as OpenVPN, Burp Suite, Wireshark, Metasploit Framework, and many others.
- **Python Packages**: Installs various Python packages using `pip` for additional functionalities.
- **Database Updates**: Updates several important databases used for security tools.
- **Updated Nano Config**: Makes your nano shortcuts and interface more Windows like and easy to view and use.
- **Updated Bash Config**: Makes the bash terminal more minmal and one-lined. (Can be Reverted by simply copying the content of `bashrc-backup` into `.bashrc` file)
- **Additional Tools**: Installs various tools from GitHub repositories, such as Pimpmykali, Volatility3, Radare2, and more.
- **Final System Update**: Performs a final update, upgrade, and cleanup of unused packages.

**Usage**:
```bash
sudo bash Setupmywsl.sh
```

### `Updatemywsl.sh`

This script is designed to update and upgrade the WSL2 environment:

- **System Update and Upgrade**: Updates and upgrades the system packages.
- **Package Installation**: Installs essential packages and tools for various functions.
- **Python Packages**: Installs necessary Python packages.
- **Database Updates**: Updates important security tool databases.
- **Final System Update**: Performs a final update, upgrade, and cleanup.

**Usage**:
```bash
sudo bash Updatemywsl.sh
```

### `Croncreator.sh`

This script sets up a cron job for automatic updates:

- **Root Check**: Ensures the script is run as root.
- **Script Copy**: Copies the `Updatemywsl.sh` script to a secure location.
- **Permissions**: Sets appropriate permissions for the script.
- **Cron Job Setup**: Adds a cron job to run `Updatemywsl.sh` on the 1st day of every month at midnight, logging output to `/var/log/updatemywsl.log`.

**Usage**:
```bash
sudo bash Croncreator.sh
```

## Requirements

- The scripts must be executed with root privileges. Use `sudo` to run them.
- Ensure that you have WSL2 installed and configured before running these scripts.

## Disclaimer

Though These scripts are provided as-is, without any warranty but have made sure these script are without any fault or weakness/exploitability. Use them at your own risk and ensure that they are compatible with your system and its requirements. If you find any vulnerability or weakness in the scripts please let me know.
