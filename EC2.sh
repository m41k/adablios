#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu CRIAR_INSTÂNCIA LISTAR_INSTÂNCIAS CRIAR_VOLUME LISTAR_SECURITY_GROUPS MAIN_MENU
case $CHOICE in
 1) read -p "ID da imagem(...): " IMGID
    read -p "Tipo da insância(t2.micro): " INSTYP
    read -p "Região(us-east-1): " REGION
    read -p "Quantidade(1): " COUNT
    read -p "Chave de acesso(sua key): " KEYNAME
    read -p "Grupo de segurança(): " SGROUPID
    read -p "Subnet ID(): " SNETID
    aws ec2 run-instances --image-id $IMGID --instance-type $INSTYP --region $REGION --count $COUNT --key-name $KEYNAME --security-group-ids $SGROUPID --subnet-id $SNETID ;;
 2) aws ec2 describe-instances --output table ;;
 3) read -p "Zone(us-east-1d): " ZONE
    read -p "Size(Gb): " SIZE
    read -p "Type(gp2): " TYPE
    aws ec2 create-volume --availability-zone $ZONE --size $SIZE --volume-type $TYPE ;;
 4) aws ec2 describe-security-groups ;;
 5) bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/cli.sh) ;;
esac
