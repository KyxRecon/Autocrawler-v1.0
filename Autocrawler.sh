#!/bin/bash
# Autocrawler For Kali and other os 
# By : Lucifer HR
again='y'
while  [ $again == 'y' ] || [ $again == 'Y' ];
do
clear

#Dont add anything under this code
cyan='\e[0;36m'
blue='\e[0;34m'
grnlight='\e[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\E[31m'
u='\033[4m'							
yellow='\e[1;33m'
endc='\E[0m'							
version='0.2v'
cat<<"EOT"
((
\\``.
\_`.``-. 
( `.`.` `._  
 `._`-.    `._ 
   \`--.   ,' `. 
    `--._  `.  .`. 
     `--.--- `. ` `. 
         `.--  `;  .`._ 
           :-   :   ;. `.__,.,__ __ 
            `\  :       ,-(     ';o`>.
              `-.`:   ,'   `._ .:  (,-`,
                 \    ;      ;.  ,: 
             ,"`-._>-:        ;,'  `---.,---.
             `>'"  "-`       ,'   "":::::".. `-.
              `;"'_,  (\`\ _ `:::::::::::'"     `---.
              `-(_,' -'),)\`.       _      .::::"'  `----._,-"")
                   \_,': `.-' `-----' `--;-.   `.   ``.`--.____/ 
                     `-^--'                \(-.  `.``-.`-=:-.__)
                                            `  `.`.`._`.-._`--.)
                                                 `-^---^--.`--
EOT
echo -e "$yellow- Autocrawler $version -"
echo -e $grnlight$u"Available options:"$endc
echo "fcrawl => File Crawler" #goofile tools
echo "harvst => The Harvester" 
echo "dcrawl => Directory CraWler" 
echo "scrawl => Domain Crawler"
echo "read   => Readme file" 
echo "exit   => Exit"
echo ""
echo -n -e $cyan$u' Crawler~~: > '$endc; tput sgr0 #insert your choice
read pass
if test $pass == 'fcrawl'
 then
 echo -n -e $red" [!] set target ~> "; tput sgr0
 read RHOST
 echo -n -e $red" [!] set Filetype [txt,pdf,doc] >> "; tput sgr0
 read filetype
 goofile -d $RHOST -f $filetype
 
elif test $pass == 'harvst'
 then
 echo -n -e $red" [!] set target [target.com] >> "; tput sgr0
 read domain
 theharvester -d $domain -l 50 -b google

elif test $pass == 'dcrawl'
	then
	echo -n -e $red" [!] set URL [http://url/directory/] >> "; tput sgr0
	read domain
	dirb "$domain"

elif test $pass == 'scrawl'
	 then
	 echo -n -e $red" [!] set domain [google.com] >> "; tput sgr0
	 read passlahc1
	 urlcrazy -p $passlahc1
elif test $pass == 'read'
 then
 cat Readme.txt
 
elif test $pass == 'exit'
 then
echo -e $red'Bye'
      exit
fi

echo
echo -e -n "Return to Main ? (y/n) :";
read again;

    while  [ $again != 'y' ] && [ $again != 'Y' ] && [ $again != 'n' ] && [ $again != 'N' ];
    do
       echo -n "Return to main ? (y/n) :";
       read again;
    done
done

