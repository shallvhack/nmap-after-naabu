#!/bin/bash


echo "
███████╗██╗  ██╗ █████╗ ██╗     ██╗    ██╗   ██╗██╗  ██╗ █████╗  ██████╗██╗  ██╗
██╔════╝██║  ██║██╔══██╗██║     ██║    ██║   ██║██║  ██║██╔══██╗██╔════╝██║ ██╔╝
███████╗███████║███████║██║     ██║    ██║   ██║███████║███████║██║     █████╔╝ 
╚════██║██╔══██║██╔══██║██║     ██║    ╚██╗ ██╔╝██╔══██║██╔══██║██║     ██╔═██╗ 
███████║██║  ██║██║  ██║███████╗███████╗╚████╔╝ ██║  ██║██║  ██║╚██████╗██║  ██╗
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝ ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
   "

echo "
                          creator : @sengarharshit1
                     https://www.twitter.com/sengarharshit1


                       Website: www.shallvhack.com
                Twitter: https://www.twitter.com/shallvhack
             LinkedIn: https://www.linkedin.com/company/shallvhack


"
if [ "$1" == "" ]
then
    echo"
Usage:
./script.sh ip_list.txt
./script.sh ip_range (e.g., ./script.sh 192.168.1.1/24)
./script.sh single_ip (e.g., ./script.sh 192.168.43.68)
"
else
naabu -ports full -hL $1 -o naabu_scan.txt || naabu -ports full -host $1 -o naabu_scan.txt
cat naabu_scan.txt | cut -d ':' -f2 | sort -u > ports.txt
for i in `cat naabu_scan.txt | cut -d ':' -f1 |uniq`; do nmap -sS -Pn -sV -T3 -p $(sed ':a;N;$!ba;s/\n/,/g' ports.txt) $i -oN nmap_$i_scan.txt;done
rm ports.txt
fi
