#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu LISTAR_INSTÂNCIAS CRIAR_VOLUME LISTAR_SECURITY_GROUPS MAIN_MENU
case $CHOICE in
 1) aws ec2 describe-instances --output table ;;
 2) read -p "Zone(us-east-1d): " ZONE
    read -p "Size(Gb): " SIZE
    read -p "Type(gp2): " TYPE
    aws ec2 create-volume --availability-zone $ZONE --size $SIZE --volume-type $TYPE ;;
 3) aws ec2 describe-security-groups ;;
 4) bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/cli.sh) ;;
esac
