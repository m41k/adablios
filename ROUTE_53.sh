#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu VERIFICAR_DISPONIBILIDADE_DOMINIO
case $CHOICE in
 1) 
  read "Digite o domínio: " DOMAIN
  aws route53domains check-domain-availability --domain-name $DOMAIN ;;
esac
