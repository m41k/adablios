#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu LISTAR CRIAR_VOLUME EXCLUIR MAIN_MENU
case $CHOICE in
 1) aws ec2 describe-instances --output table ;;
 2) read -p "Zone(us-east-1d): " ZONE
    read -p "Size(Gb): " SIZE
    read -p "Type(gp2): " TYPE
    aws ec2 create-volume --availability-zone $ZONE --size $SIZE --volume-type $TYPE;;
esac
