#!/usr/bin/bash
# This tool can do lots of scan alone by itself, Don't misuse it otherwise I will not be responsible...
# Author - Anil Shrestha
# Github - https://github.com/ColdBones69
# Facebook - https://www.facebook.com/secrets.1928
# Email - anilshresthasecrets@gmail.com
# ToolName - Vuln-Map 

#colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
GRAY='\033[0;90m'

#Logo & select_attack
while true
do
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e " Select any option." | lolcat
echo -e " ^^^^^^^^^^^^^^^^^^" | lolcat
echo -e "1  --->  Nmap Scan  
2  --->  Nikto Scan
3  --->  Word Press Scan
4  --->  SQL Map Scan
5  --->  Spiderfoot Scan
6  --->  Update
7  --->  About
99 --->  Exit
" | lolcat
read -p "Vuln-Map {- " select_attack 

#NMAP
if [ $select_attack == 1 ]
then
clear
while true
do
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e " Select Scan type." | lolcat
echo -e " ^^^^^^^^^^^^^^^^^^"| lolcat
echo -e "1 ---> Normal Scan
2 ---> OS Detection
3 ---> FireWall Bypass
4 ---> Aggeresive Scan
5 ---> Vulerability Scan
99 ---> Back...
" | lolcat
read -p "Vuln-Map {- " nmap_scan_type

    if [ $nmap_scan_type == 1 ] #Normal Scan
    then 
    echo
    echo "Nmap Normal Scan" | lolcat
    echo "^^^^^^^^^^^^^^^^" | lolcat
    read -p "Enter the IPadress/Domain : " target 
    echo "Scanning on progress..." ; nmap $target -Pn
    echo 
    echo -e ${BLUE} "Press Enter to continue..."
    read
    

    elif [ $nmap_scan_type == 2 ] #OS Detection
    then
    echo
    echo "OS Detection" | lolcat
    echo "^^^^^^^^^^^^" | lolcat
    read -p "Enter the IPadress/Domain : " target 
    echo "Scanning on progress..." ; nmap $target -O -Pn
    echo
    echo -e ${BLUE} "Press Enter to continue..."
    read 
    

    elif [ $nmap_scan_type == 3 ] #Firewall Bypass
    then 
    echo
    echo "FireWall Bypass" | lolcat
    echo "^^^^^^^^^^^^^^^" | lolcat
    read -p "Enter the IPadress/Domain : " target 
    echo "Scanning on progress..." ; nmap -D 192.168.1.23 192.168.1.65 192.168.1.10 $target
    echo
    echo -e ${BLUE} "Press Enter to continue..."
    read 

    elif [ $nmap_scan_type == 4 ] #Agressive Scan
    then
    echo
    echo "Agressive Scan " | lolcat
    echo "^^^^^^^^^^^^^^^" | lolcat
    read -p "Enter the IPadress/Domain : " target 
    echo "Scanning on progress..." ; nmap -A -T4 $target
    echo
    echo -e ${BLUE} "Press Enter to continue..."
    read 

    elif [ $nmap_scan_type == 5 ] #Vulnerability Scan
    then
    echo
    echo "Vulnerability Scan " | lolcat
    echo "^^^^^^^^^^^^^^^^^^" | lolcat
    read -p "Enter the IPadress/Domain : " target 
    echo "Scanning on progress..." ; nmap --script vuln $target -T4
    echo
    echo -e ${BLUE} "Press Enter to continue..."
    read 

    elif [ $nmap_scan_type == 99 ] #Back
    then
    break

    else #Invalid
    echo -e ${RED} " Enter Valid option..."
    read

    fi
clear
done

#Nikto
elif [ $select_attack == 2 ]
then
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e " Nikto Scan" | lolcat
echo -e " ^^^^^^^^^^" | lolcat
read -p "Enter the IPadress/Domain : " target
echo -e "Scanning on progress..." ; nikto -h $target 
echo
echo -e ${RED} "Press Enter to go back..." 
read

#WP-Scan
elif [ $select_attack == 3 ]
then
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e "Word-Press Scan" | lolcat
echo -e "^^^^^^^^^^^^^^^"
read -p "Enter the Domain name : " target
echo -e "Scanning on progress..." ; wpscan --url http://$target
echo
echo -e ${RED} "Press Enter to go back..."
read

#SQP Map
elif [ $select_attack == 4 ]
then
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e "SQL Map Scan" | lolcat
echo -e "^^^^^^^^^^^^^^^"
read -p "Enter the IPadress/Domain: " target
echo -e "Scanning on progress..." ; sqlmap $target --crawl 5 --level 3 --risk 3 --batch 
echo
echo -e ${RED} "Press Enter to go back..."
read

#Spiderfoot
elif [ $select_attack == 5 ]
then
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e "SpiderFoot GUI" | lolcat
echo -e "^^^^^^^^^^^^^^^"
ifconfig | lolcat
read -p "Enter your IPadress to start the GUI Page : " target
echo 
echo -e "${RED}Starting SpiderFoot GUI, Please type ${YELLOW} $target ${RED} manually in browser if it didn't start by itself" ; sleep 2 ; spiderfoot -l $target:80 | firefox http://$target
echo
echo -e ${RED} "Press Enter to go back..."
read


#Update
elif [ $select_attack == 6 ]
then
clear
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo 
echo -e "Checking for updates..." ; sleep 2 
echo -e "Updating...." ; sleep 2
echo 
echo -e "You are now all up do date..." 
echo 
echo -e ${RED} " Press Enter to Continue..."
read


#About
elif [ $select_attack == 7 ]
then
clear
figlet ColdBones | lolcat ; neofetch | lolcat
echo
echo
echo -e ▒█░░▒█ █░░█ █░░ █▀▀▄ ░░ █▀▄▀█ █▀▀█ █▀▀█     
echo -e ${GRAY}░▒█▒█░ █░░█ █░░ █░░█ ▀▀ █░▀░█ █▄▄█ █░░█     
echo -e ░░▀▄▀░ ░▀▀▀ ▀▀▀ ▀░░▀ ░░ ▀░░░▀ ▀░░▀ █▀▀▀    
echo -e ${WHITE} ____________________________________
echo -e "\n                Tool By @Anil Shrestha"
echo -e "Please don't use this tool for any type of malecious activity..."
echo -e "
# Uses
- cd Vuln-Map
- chmod +x install.sh
- chmod +x Vuln-Map.sh
- ./Vuln-Map.sh

# Author Information
Name - Anil Shrestha
Github - https://github.com/ColdBones69
Facebook - https://www.facebook.com/secrets.1928
Email - anilshresthasecrets@gmail.com

# DIsclaimer
- THis tool is only for my educational purpose so please don't misuse it 
  otherwise I won't be responsible for it
" | lolcat
read

#Greetings
elif [ $select_attack == 99 ]
then
echo "Thanks for using :)" | lolcat
read
break

#Invalid
else
echo -e ${RED} "Enter Valid option"
read
fi
done