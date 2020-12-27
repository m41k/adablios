#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu 'LISTAR' 'CRIAR VOLUME' 'EXCLUIR' 'MAIN MENU'
case $CHOICE in
 1) aws ec2 describe-instances --output table ;;
esac
