#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
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
			echo $((i+1)) ${MENU[$i]} | tr '_' ' '
		done
	tput cup $((${#MENU[@]}+8)) 15
	read -p "Escolha uma opção [1-${#MENU[@]}]: " CHOICE
	tput clear
	tput sgr0
	tput rc
}
