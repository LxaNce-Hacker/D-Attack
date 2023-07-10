#!/bin/bash

clear
echo
echo
bash logo.sh

# Function to check and install dependencies
check_dependencies() {
	clear && bash logo.sh;
    if ! command -v pv > /dev/null; then
        echo -e "\033[32m[+]\033[36m Installing 'pv' package..."

        # Check if running on Termux (Android)
        if [[ $(uname -o) == "Android" ]]; then
            pkg install pv
        else
            # Check if running on Linux
            if command -v apt-get > /dev/null; then
                sudo apt-get update
                sudo apt-get install -y pv
            elif command -v yum > /dev/null; then
                sudo yum install -y pv
            elif command -v dnf > /dev/null; then
                sudo dnf install -y pv
            elif command -v zypper > /dev/null; then
                sudo zypper install -y pv
            else
                echo -e "\033[32m[!]\033[36m Unable to install 'pv' package. Please install it manually."
            fi
        fi
        echo -e "\033[32m[+]\033[36m 'pv' package installed successfully." | pv -qL 20
    else
        echo -e "\033[32m[+]\033[36m 'pv' package is already installed. Skipping installation." | pv -qL 20
    fi
    if ! command -v toilet > /dev/null; then
        echo -e "\033[32m[+]\033[36m Installing 'toilet' package..."
        if [[ $(uname -o) == "Android" ]]; then
            pkg install toilet
        else
            if command -v apt-get > /dev/null; then
                sudo apt-get update
                sudo apt-get install -y toilet
            elif command -v yum > /dev/null; then
                sudo yum install -y toilet
            elif command -v dnf > /dev/null; then
                sudo dnf install -y toilet
            elif command -v zypper > /dev/null; then
                sudo zypper install -y toilet
            else
                echo -e "\033[32m[!]\033[36m Unable to install 'toilet' package. Please install it manually."
                exit 1
            fi
        fi
        echo -e "\033[32m[+]\033[36m 'toilet' package installed successfully." | pv -qL 30
    else
        echo -e "\033[32m[+]\033[36m 'toilet' package is already installed. Skipping installation." | pv -qL 30
    fi

    if ! command -v lolcat > /dev/null; then
        echo -e "\033[32m[+]\033[36m Installing 'lolcat' package..."
        if [[ $(uname -o) == "Android" ]]; then
            pkg install ruby
            gem install lolcat
        else
            if command -v apt-get > /dev/null; then
                sudo apt-get update
                sudo apt-get install -y ruby
                sudo gem install lolcat
            elif command -v yum > /dev/null; then
                sudo yum install -y ruby
                sudo gem install lolcat
            elif command -v dnf > /dev/null; then
                sudo dnf install -y ruby
                sudo gem install lolcat
            elif command -v zypper > /dev/null; then
                sudo zypper install -y ruby
                sudo gem install lolcat
            else
                echo -e "\033[32m[!]\033[36m Unable to install 'lolcat' package. Please install it manually."
                exit 1
            fi
        fi
        echo -e "\033[32m[+]\033[36m 'lolcat' package installed successfully." | pv -qL 30
        clear
    else
        echo -e "\033[32m[+]\033[36m 'lolcat' package is already installed. Skipping installation." | pv -qL 30
        clear
    fi
    
}

check_dependencies

clear && bash logo.sh
echo -e "\033[1m\033[32m\t\t \033[1m\033[31m<==\033[33m[\033[32m Author Info \033[33m]\033[31m==>\033[0m" | pv -qL 15
echo
echo -e "\033[1m\033[33m\n\tDeveloper : \033[32mPrince Katiyar\033[0m" | pv -qL 15
echo -e "\033[1m\033[33m\n\tGithub    : \033[32mhttps://github.com/LxaNce-Hacker\033[0m" | pv -qL 15
echo -e "\033[1m\033[33m\n\tYoutube   : \033[32mLxaNce-Hacker\033[0m" | pv -qL 15
sleep 2

pingip() {
  echo
  echo
  toilet -f pagga 'Ping Attack       ' | lolcat
  sleep 1
  echo
  ping -c 2 $ip
  echo
}

http() {
  echo
  echo
  toilet -f pagga 'Http Header       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/httpheaders/?q=$ip"
  echo
}

whois() {
  echo
  echo
  toilet -f pagga 'Whois       ' | lolcat
  sleep 1
  echo
  curl "http://api.hackertarget.com/whois/?q=$ip"
  echo
}

trace() {
  echo
  echo
  toilet -f pagga 'Traceroute       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/mtr/?q=$ip"
  echo
}

dns() {
  echo
  echo
  toilet -f pagga 'DNS Lookup       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/dnslookup/?q=$ip"
  echo
}

reversedns() {
  echo
  echo
  toilet -f pagga 'Reverse Dns       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/reversedns/?q=$ip"
  echo
}

geoip() {
  echo
  echo
  toilet -f pagga 'Geo Ip       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/geoip/?q=$ip"
  echo
}

subdomains() {
  echo
  echo
  toilet -f pagga 'Subdomains       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/hostsearch/?q=$ip"
  echo
}

reverseip() {
  echo
  echo
  toilet -f pagga 'Reverse IP       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/reverseiplookup/?q=$ip"
  echo
}

nmap() {
  echo
  echo
  toilet -f pagga 'Nmap       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/nmap/?q=$ip"
  echo
}

plink() {
  echo
  echo
  toilet -f pagga 'Page Link       ' | lolcat
  sleep 1
  echo
  curl "https://api.hackertarget.com/pagelinks/?q=$ip"
  echo
}

clear && echo -e "\033[36m"
bash logo.sh

menu() {
  echo -e "\033[32m[+]\033[36m Subdomains finder"
  echo -e "\033[32m[+]\033[36m Whois lookup"
  echo -e "\033[32m[+] \033[36mDNS lookup"
  echo -e "\033[32m[+]\033[36m Reverse DNS lookup"
  echo -e "\033[32m[+]\033[36m GeoIP lookup"
  echo -e "\033[32m[+]\033[36m Reverse IP lookup"
  echo -e "\033[32m[+]\033[36m Http Response"
  echo -e "\033[32m[+]\033[36m Ping"
  echo -e "\033[32m[+]\033[36m Page Link"
  echo -e "\033[32m[+]\033[36m Nmap"
  echo -e "\033[32m[+]\033[36m Traceroute"
}

menu
echo
echo
echo -e "\033[1m\033[32mEnter Your IP Or Domain..."
echo
read -p "$(echo -e '\033[1m\033[32mIP or Domain : \033[33m\033[1m')" ip
echo
sleep 3

## Function Calling
subdomains
whois
dns
reversedns
geoip
reverseip
http
pingip
plink
nmap
trace

exit
