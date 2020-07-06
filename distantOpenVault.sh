#!/bin/bash

BOLDYELLOW="\e[1m\e[1;33m"
BOLDGREEN="\e[1m\e[1;32m"
END="\e[0m"

echo -e "${BOLDYELLOW}Appel du script distant de montage du coffre...${END}"
ssh -t <leNomQueVousAviezIndiquerAuPrealable> '/home/<userServeur>/openVault.sh'
echo -e "${BOLDYELLOW}Création du répertoire...${END}"
mkdir /home/<userClient>/COFFRE
echo -e "${BOLDYELLOW}Montage du coffre...${END}"
sshfs -o port=<lePortSSHQueVousAvezIndiquezAuPrealable>,IdentityFile=/home/<userClient>/.ssh/id_ed25519 <userServeur>@<IPDuServeur>:/home/<userServeur>/COFFRE /home/<userClient>/COFFRE
echo -e "${BOLDGREEN}Le coffre est désormais accessible...${END}"
