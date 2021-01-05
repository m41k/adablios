#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu CRIAR_REDE MAIN_MENU
case $CHOICE in
 1) read -p "CIDR REDE (192.168.0.0/16): " REDE
     VPC=`aws ec2 create-vpc --cidr-block $REDE --query 'Vpc.{VpcId:VpcId}' --output text`
    read -p "CIDR SUBNET (192.168.1.0/24): " FAIXA
    read -p "Zona de Disponibilidade (us-east-1a): " ZONE
     SUBNET=`aws ec2 create-subnet --vpc-id $VPC --cidr-block $FAIXA --availability-zone $ZONE --query 'Subnet.{SubnetId:SubnetId}' --output text`
     IGW=`aws ec2 create-internet-gateway --query 'InternetGateway.{InternetGatewayId:InternetGatewayId}' --output text`
     aws ec2 attach-internet-gateway --vpc-id $VPC --internet-gateway-id $IGW
     RTID=`aws ec2 create-route-table --vpc-id $VPC --query 'RouteTable.{RouteTableId:RouteTableId}' --output text`
     aws ec2 associate-route-table --route-table-id $RTID --subnet-id $SUBNET
    read -p "ENDEREÇO DESTINO(0.0.0.0/0): " ENDEST
     aws ec2 create-route --route-table-id $RTID --destination-cidr-block $ENDEST --gateway-id $IGW ;;
2) bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/cli.sh) ;;
esac
