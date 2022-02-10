#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH           |"
echo "|                  |"
echo "| Введите 1/2/3:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python3
	pkg install dos2unix
	pip install requests
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/bomber/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			apk add requests
			apk add colorama
			apk add proxyscrape
		else
			echo "Некорректный ввод"
		fi
	fi
fi
© 2022 GitHub, Inc.
