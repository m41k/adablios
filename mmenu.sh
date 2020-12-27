#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
  wget -qO /tmp/fmenu.sh https://raw.githubusercontent.com/m41k/adablios/main/fmenu.sh
  source /tmp/fmenu.sh
  menu EC2 S3 RDS ROUTE_53
  bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/${MENU[$((CHOICE-1))]}.sh)
