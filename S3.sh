#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu LISTAR CRIAR EXCLUIR MAIN_MENU
case $CHOICE in
 1) aws s3 ls ;;
esac
