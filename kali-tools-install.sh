#!/bin/bash
#tools-install

Installing_dependencies (){
#kali linux

echo 'root' | sudo -kS apt update  ; echo 'root' | sudo -kS apt clean ; echo 'root' | sudo -kS apt autoclean ;  echo 'root' | sudo -kS apt autoremove -y 
echo 'root' | sudo -kS apt install -y  python3 python3-pip massdns wpscan  sublist3r toilet lolcat   cmake figlet tar neofetch git vim ripgrep curl   wget  nmap xsltproc  htop   p7zip-full  masscan  gdu  hydra  build-essential  libpcap-dev  libusb-1.0-0-dev libnetfilter-queue-dev   jq    gnupg lsb-release unzip 

#go-install
echo -e "\033[34m[+]Installing GO.. For $OS \033[m"
echo 'root' | sudo -kS apt install golang -y 

}
Installing_dependencies



#installing-tools
tools(){


mkdir -p ~/tools
cd ~/tools

echo -e "\033[33m[+]Installing... tools for Kali linux \033[m";

curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain*
echo 'root' | sudo -kS chmod +x findomain
echo 'root' | sudo -kS mv findomain /usr/bin/findomain
echo 'root' | sudo -kS rm findomain*

curl -LO https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone*
echo 'root' | sudo -kS chmod +x aquatone
echo 'root' | sudo -kS mv aquatone /usr/bin/aquatone
echo 'root' | sudo -kS rm  LICENSE.txt  README.md aquatone*


echo -e "\033[36m[+]nmap-vulners Updating...\033[m" 
chmod +rwx /usr/share/nmap/scripts/
echo 'root' | sudo -kS rm  vulners.nse 
echo 'root' | sudo -kS rm  /usr/share/nmap/scripts/vulners.nse
echo 'root' | sudo -kS wget https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse ;echo 'root' | sudo -kS mv vulners.nse /usr/share/nmap/scripts/ 
echo 'root' | sudo  -kS nmap --script-updatedb


echo 'root' | sudo -kS pip install setuptools
git clone https://github.com/devanshbatham/paramspider
cd paramspider
chmod +x *
echo 'root' | sudo -kS pip install .
cd ..


#gf
wget https://raw.githubusercontent.com/emadshanab/Gf-Patterns-Collection/main/set-all.sh
chmod +x *
bash set-all.sh;
rm  set-all.sh

git  clone https://github.com/takshal/freq
cd freq
chmod +x *
echo 'root' | sudo -kS go build main.go
echo 'root' | sudo -kS mv main /usr/local/bin/freq
cd ..

#xss

echo 'root' | sudo -kS pip install fuzzywuzzy
echo 'root' | sudo -kS pip install requests
echo 'root' | sudo -kS pip install tld
echo 'root' | sudo -kS pip install xsstrike
echo 'root' | sudo -kS pip install bs4

git clone https://github.com/pwn0sec/PwnXSS
cd PwnXSS
chmod 755 -R PwnXSS
echo 'root' | sudo -kS pip install  -r requirements.txt
cd ..

git clone https://github.com/pwn0sec/pwnscan.git
cd pwnscan
echo 'root' | sudo -kS pip install  -r requirements.txt
cd ..


#sqli
git clone https://github.com/r0oth3x49/ghauri.git
cd ghauri
echo 'root' | sudo -kS pip install  -r requirements.txt
chmod +x *
echo 'root' | sudo -ks python3 setup.py install
cd ..

#ssrf
go install github.com/assetnote/surf/cmd/surf@latest
echo 'root' | sudo -kS cp -r ~/go/bin/surf  /usr/local/bin/ 

git clone https://github.com/swisskyrepo/SSRFmap
cd SSRFmap
echo 'root' | sudo -kS pip install -r requirements.txt
chmod +x *
cd ..

#useful tools
git clone https://github.com/m4ll0k/BBTz


#subdomaintakover
git clone https://github.com/punk-security/dnsReaper
cd dnsReaper
echo 'root' | sudo -kS pip install -r requirements.txt
chmod +x *
cd ..

#secret
wget https://github.com/joanbono/gap/releases/download/v3.0.0/GAP_v3.0.0_linux_amd64.tar.gz
chmod +x *.tar.gz
tar -xvf *.gz 
rm *.tar.gz
chmod +x *
echo 'root' | sudo -kS mv gap_v3.0.0_linux_amd64 /usr/local/bin/gap


#js-secret
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
cd secretfinder
chmod +x *
echo 'root' | sudo -kS pip install -r requirements.txt
cd ..

go install -v github.com/edoardottt/cariddi/cmd/cariddi@latest
go install github.com/i5nipe/nipejs@latest
go install github.com/MrEmpy/mantra@latest
echo 'root' | sudo -kS cp -r ~/go/bin/*  /usr/local/bin/    

git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
chmod +x *
echo 'root' | sudo -kS python3 setup.py install
cd ..

#cors
git clone  https://github.com/s0md3v/Corsy.git
cd Corsy
chmod +x *
echo 'root' | sudo -kS pip install -r requirements.txt
echo 'root' | sudo -kS pip install requests
cd ..

#smugller

git clone https://github.com/anshumanpattnaik/http-request-smuggling.git
cd http-request-smuggling
chmod +x *
echo 'root' | sudo -kS pip install -r requirements.txt
cd ..

#favicon
git clone https://github.com/devanshbatham/FavFreak
cd FavFreak
chmod +x *
echo 'root' | sudo -kS pip install -r requirements.txt
cd ..


#crlf injection & openredirect
go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest
sudo pip3 install crlfsuite

git clone https://github.com/r0075h3ll/Oralyzer.git
cd Oralyzer
chmod +x *
echo 'root' | sudo -kS pip install -r requirements.txt
cd ..

git clone https://github.com/devanshbatham/openredirex
cd openredirex
chmod +x *
echo 'root' | sudo -kS bash setup.sh
echo 'root' | sudo -kS pip install tqdm
cd ..

#host headr injection
go install github.com/mlcsec/headi@latest


#remout
git clone https://github.com/ven0m90/remoutscope 
cd remoutscope
chmod +x *
echo 'root' | sudo -kS bash -c install
echo 'root' | sudo -kS mv remout /usr/local/bin/
cd ..


wget https://raw.githubusercontent.com/Dheerajmadhukar/4-ZERO-3/main/403-bypass.sh
chmod +x 403-bypass.sh

wget https://raw.githubusercontent.com/0xrobiul/FinEx/main/FinEx.sh
chmod +x FinEx.sh

git clone https://github.com/hisxo/gitGraber
cd gitGraber
chmod +x *
echo 'root' | sudo -kS pip3 install -r requirements.txt
cd ..

git clone https://github.com/ameenmaali/urldedupe.git
cd urldedupe
sudo cmake CMakeLists.txt
sudo cp  urldedupe /usr/local/bin
cd ..



#x8
wget https://github.com/Sh1Yo/x8/releases/download/v4.3.0/x86_64-linux-x8.gz
gzip -dv x86_64-linux-x8.gz 
chmod +x  x86_64-linux-x8
echo 'root' | sudo -kS mv x86_64-linux-x8 /usr/local/bin/x8

echo 'root' | sudo -kS pip install arjun  
echo 'root' | sudo -kS pip install uro
echo 'root' | sudo -kS pip install dirsearch 
echo 'root' | sudo -kS pip install sqlmap
echo 'root' | sudo -kS  pip3 install git+https://github.com/xnl-h4ck3r/waymore.git -v
echo 'root' | sudo -kS  pip3 install git+https://github.com/xnl-h4ck3r/xnLinkFinder.git -v

echo 'root' | sudo -kS pip install git+https://github.com/sanjai-AK47/ShodanX
echo 'root' | sudo -kS pip install appdirs
echo 'root' | sudo -kS pip install alive_progress


#go-tools

echo -e "\033[36m[+]Installing... Go-Tools  \033[m";
go install -v github.com/projectdiscovery/notify/cmd/notify@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install github.com/hakluke/haklistgen@latest
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install github.com/d3mondev/puredns/v2@latest
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest
go install -v github.com/tomnomnom/gf@latest
go install github.com/dwisiswant0/gfx@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/tomnomnom/qsreplace@latest
go install github.com/tomnomnom/unfurl@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/hakluke/hakrawler@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/projectdiscovery/katana/cmd/katana@latest
go install github.com/lc/gau/v2/cmd/gau@latest
go install github.com/ffuf/ffuf/v2@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/KathanP19/Gxss@latest
go install github.com/projectdiscovery/tlsx/cmd/tlsx@latest
go install github.com/hakluke/hakip2host@latest
go install -v github.com/ethicalhackingplayground/bxss@latest
go install github.com/hahwul/dalfox/v2@latest
go install github.com/tomnomnom/meg@latest
go install github.com/hakluke/hakrawler@latest

#copy-path-to-bin
echo 'root' | sudo -kS cp  ~/go/bin/*  /usr/local/bin/ 
echo 'root' | sudo -kS cp -r ~/go/bin/*  /usr/local/bin/ 


echo -e ${GREEN}"[+]Done! Go Tools installed."; echo "";
sleep 1.5

curl -LO https://raw.githubusercontent.com/lc/gau/master/.gau.toml
mv .gau.toml ~/.gau.toml

echo  -e "\033[32m_________________________________\033[m"
echo -e "\033[33m[+]Installaltion Done! \033[m"


}
tools

echo -e "\033[33m[+]Installing nuclei templates \033[m"
git clone https://github.com/projectdiscovery/nuclei-templates.git ~/nuclei-templates
git clone https://github.com/0xKayala/fuzzing-templates.git ~/fuzzing-templates


