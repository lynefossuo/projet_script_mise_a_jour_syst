#!/bin/bash

UPDATE_CMD="apt update"
UPGRADE_CMD="apt upgrade -y"
AUTOREMOVE_CMD="apt autoremove -y"
OUTPUT=$(apt update 2>&1)

ENT_CODE=$(echo $?)
echo $ENT_CODE
echo "Mise à jour la liste des paquets:"| $UPDATE_CMD
echo "Mise à jour de tous les paquets:"| $UPGRADE_CMD
echo "Nettoyer ceux inutiles:" | $AUTOREMOVE_CMD

if [ ! $ENT_CODE -eq "0" ]; then

	echo "Erreur pendant le apt update"

fi;

echo $OUTPUT >> apt_update.log
cat apt_update.log | grep "upgraded"


cat apt_update.log|grep "upgraded"

