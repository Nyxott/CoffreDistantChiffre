#!/bin/bash

umount /home/<userServeur>/COFFRE
sudo /usr/sbin/cryptsetup luksClose /dev/mapper/coffre_chiffre
rm -r /home/<userServeur>/COFFRE
