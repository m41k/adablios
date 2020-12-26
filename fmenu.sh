#!/bin/bash

MAIN_MENU=('EC2' 'S3' 'RDS' 'OUTROS')
EC2=('LISTAR' 'CRIAR' 'EXCLUIR' 'MAIN_MENU')
S3=('CRIAR' 'LISTAR' 'MAIN_MENU')

function menu()
{
	X=0
	Y=15
	MENU=($@)
	tput clear
	tput cup $((X+3)) $Y
	tput setaf 4
	tput bold
	echo "adablios.com"
	tput sgr0
	tput cup 5 $((Y+2))
	tput rev
	echo "MENU"
	tput sgr0
	for (( i=0; i<${#MENU[@]}; i++ ))
		do
			tput cup $((i+7)) $Y
			echo $((i+1)) ${MENU[$i]}
		done
	tput cup $((${#MENU[@]}+8)) 15
	read -p "Escolha uma opção [1-${#MENU[@]}]: " CHOICE
	tput clear
	tput sgr0
	tput rc
	bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/${MENU[$((CHOICE-1))]}.sh)
	#eval menu "\${${MENU[$((CHOICE-1))]}[@]}"
	#eval menu "\${${MAIN_MENU[$((CHOICE-1))]}[@]}"
	#menu eval $var
}
menu ${MAIN_MENU[@]}
