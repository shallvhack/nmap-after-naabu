# nmap after naabu

It is an automated script which run naabu first and then nmap on open ports.

This script automatically scan all the IPs available in IP List with "naabu" to find open ports then It filters the open ports. It runs the NMAP on IPs with Open Ports to find running services and versions.



You will get naabuscan.txt. <IP>.txt files after running this script

I

Requirement : 

- naabu (https://github.com/projectdiscovery/naabu)

- nmap

## Usage:

git clone https://github.com/shallvhack/nmap-after-naabu.git

cd nmap-after-naabu

chmod +x script.sh

./script.sh ip_list.txt
