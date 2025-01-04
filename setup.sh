#!/bin/bash

chmod +x setupmywsl.sh updatemywsl.sh croncreator.sh
sudo chmod u+s setupmywsl.sh updatemywsl.sh croncreator.sh
sudo chown root:root setupmywsl.sh updatemywsl.sh croncreator.sh
ls -l setupmywsl.sh updatemywsl.sh croncreator.sh
echo "[+] SUCCESS #}> SUID Permissions Set Successfully!"
