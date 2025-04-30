#!/bin/bash

chmod +x install.sh update.sh croncreator.sh
sudo chmod u+s install.sh update.sh croncreator.sh
sudo chown root:root install.sh update.sh croncreator.sh
ls -l install.sh update.sh croncreator.sh
echo "[###] SUCCESS: SUID PERMISSIONS SET SUCCESSFULLY !!!"
