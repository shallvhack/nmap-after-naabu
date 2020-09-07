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

naabu -ports full -hL $1 -o naabu_scan.txt
cat naabu_scan.txt | cut -d ':' -f2 | sort -u > ports.txt
for i in `cat naabu_scan.txt | cut -d ':' -f1 |uniq`; do nmap -sS -Pn -sV -T3 -p $(sed ':a;N;$!ba;s/\n/,/g' ports.txt) $i -oN nmap_$i_scan.txt;done
rm ports.txt
