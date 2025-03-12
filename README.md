# WSL Setup and Maintenance Scripts
=====================================

This repository contains a set of scripts designed to set up, update, and maintain a Windows Subsystem for Linux (WSL) environment. The scripts should be run with root privileges to ensure proper configuration.

### `install.sh`

This script performs a comprehensive setup of a WSL2 environment, including:

- **System Update and Upgrade**: Updates and upgrades the system packages.
- **Package Installation**: Installs a wide range of tools and utilities for security, networking, development, and more.
    - _NOTE:_ To find the full list, please review the code of `install.sh`.
- **Python Packages**: Installs various Python packages using `pip` for additional functionalities.
- **GIT Configuration**: Configures Git settings if the specified to do so when running the `install.sh` script.
    - _NOTE:_ Make sure to configure your Git username and email in the script code.
- **Configure Systemd**: Configures the `systemd` to `true` in `wsl.conf` and prompts the user to restart WSL.
- **Database Updates**: Updates several important databases used for security tools.
- **Updated Nano Config**: Makes your nano shortcuts and interface more Windows-like and easier to use.
- **Updated Bash Config**: Makes the bash terminal more minimal and compact.
    - _NOTE:_ (Can be reverted by copying the content of `bashrc-backup` into `.bashrc` file)
- **Additional Tools**: Installs various tools from GitHub repositories, such as Nessus, Volatility3, Radare2, and more.
- **Final System Update**: Performs a final update, upgrade, and cleanup of unused packages.

**Usage**:
- Setting up Permissions:
```bash
sudo chmod +x build.sh
./build.sh
```
- Setting up WSL:
```bash
./install.sh
```
- Setting up WSL with Git Global Configurations (Make sure to change your username and email in the code):
```bash
./install.sh git
```

### `update.sh`

This script is designed to update and upgrade the WSL2 environment:

- **System Update and Upgrade**: Updates and upgrades the system packages.
- **Package Installation**: Installs essential packages and tools for various functions.
- **Database Updates**: Updates important security tool databases.
- **Final System Update**: Performs a final update, upgrade, and cleanup.

**Usage**:
```bash
./update.sh
```

### `croncreator.sh`

This script sets up a cron job for automatic updates:

- **Root Check**: Ensures the script is run as root.
- **Script Copy**: Copies the `update.sh` script to a secure location.
- **Permissions**: Sets appropriate permissions for the script.
- **Cron Job Setup**: Adds a cron job to run `update.sh` on the 1st day of every month at midnight, logging output to `/var/log/update.log`.

**Usage**:
```bash
./croncreator.sh
```

### `build.sh`

This script simplifies the process of setting up the environment by:

- **Setting SUID Permissions**: Sets SUID permissions on the `install.sh`, `update.sh`, and `croncreator.sh` scripts.
- **Changing Ownership**: Changes the ownership of the scripts to `root:root`.
- **Listing Files**: Verifies and lists the permission settings of the files.

**Usage**:
```bash
./build.sh
```

## Requirements

- The scripts must be executed with root privileges. Use `sudo` to run them.
- Ensure that you have WSL2 installed and configured before running these scripts.

## Disclaimer

These scripts are provided as-is, without any warranty. While efforts have been made to ensure these scripts are secure and functional, use them at your own risk. Ensure that they are compatible with your system and its requirements. If you find any vulnerabilities or weaknesses in the scripts, please report them.
