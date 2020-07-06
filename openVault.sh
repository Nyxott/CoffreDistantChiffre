#!/bin/bash

mkdir /home/<userServeur>/COFFRE
sudo /usr/sbin/cryptsetup luksOpen /dev/VGCRYPT/lv_coffre_chiffre coffre_chiffre
mount /home/<userServeur>/COFFRE
