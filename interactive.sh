#!/bin/bash

function update_indexes(){
	echo "updating indexes"
	sudo apt-get update
}

function update_soft(){
	echo "updating softwares"
	sudo apt-get upgrade
}

function save_config(){
	echo "Creating a backup of current config"
	journalctl -u ssh >> /root/logs/journalctl_$(date +%y%m%d).log
	journalctl -u nginx >> /root/logs/journalctl_$(date +%y%m%d).log
}

function save_state(){
	echo "saving state"
	top >> /root/logs/state_$(date +%y%m%d).log
	free >> /root/logs/state_$(date +%y%m%d).log
	df >> /root/logs/state_$(date +%y%m%d).log
	ps >> /root/logs/state_$(date +%y%m%d).log
}


Choices=(1 "Mettre à  jour l'index"
	   2 "Mettre à  jour les logiciels"
	   3 "Sauvegarder la config système"
	   4 "Créer un rapport système")


opt=$(dialog --clear --backtitle "AdminMgr" --title "Utilitaire admin" --menu "chose :" 15 40 4 "${Choices[@]}" 2>&1 >/dev/tty)

clear

case $opt in
	1)
		update_indexes
		;;
	2)
		update_soft
		;;
	3)
		save_config
		;;
	4)
		save_state
		;;
esac