#--------------------------------------------------------------------------------#
#		  PROJETO ADABLIOS - adablios.com				 #
# 		CREATED BY: maik.alberto@hotmail.com				 #
#--------------------------------------------------------------------------------#
clear
cat << EOF

                                                      Welcome to the AWS automation system:

 █████╗ ██████╗  █████╗ ██████╗ ██╗     ██╗ ██████╗ ███████╗    ██████╗ ██████╗ ███╗   ███╗
██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║     ██║██╔═══██╗██╔════╝   ██╔════╝██╔═══██╗████╗ ████║
███████║██║  ██║███████║██████╔╝██║     ██║██║   ██║███████╗   ██║     ██║   ██║██╔████╔██║
██╔══██║██║  ██║██╔══██║██╔══██╗██║     ██║██║   ██║╚════██║   ██║     ██║   ██║██║╚██╔╝██║
██║  ██║██████╔╝██║  ██║██████╔╝███████╗██║╚██████╔╝███████║██╗╚██████╗╚██████╔╝██║ ╚═╝ ██║
╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝ ╚═════╝ ╚══════╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝

Press a key to continue

EOF
read

clear

bash <( wget -qO- https://raw.githubusercontent.com/m41k/adablios/main/mmenu.sh)
