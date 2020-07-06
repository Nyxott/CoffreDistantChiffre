#!/bin/bash

BOLDYELLOW="\e[1m\e[1;33m"
BOLDGREEN="\e[1m\e[1;32m"
END="\e[0m"

echo -e "${BOLDYELLOW}Démontage du coffre...${END}"
fusermount -u /home/<userClient>/COFFRE
echo -e "${BOLDYELLOW}Suppression du répertoire...${END}"
rm -r /home/<userClient>/COFFRE
echo -e "${BOLDYELLOW}Appel du script distant de démontage du coffre...${END}"
ssh <leNomQueVousAviezIndiquerAuPrealable> '/home/<userServeur>/closeVault.sh'
echo -e "${BOLDGREEN}Le coffre est désormais inaccessible...${END}"
