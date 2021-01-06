#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
source /tmp/fmenu.sh
menu GET_COST MAIN_MENU
case $CHOICE in
 1) read -p "DATA INICIO (AAAA/MM/DD): " START
    read -p "DATA FINAL (AAAA/MM/DD): " END
 aws ce get-cost-and-usage --time-period Start=$START,End=$END --granularity MONTHLY --metrics "BlendedCost"
 ;;
esac
