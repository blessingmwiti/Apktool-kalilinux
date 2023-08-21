#!/system/bin/sh
echo -e "\e[36m************-----------++++---------************"
echo -e "\e[1;34m [✓] \e[35m \e[1m ---  Apktool \e[91m version-2.8.1 \e[0m"

echo -e "\e[32m \e[1m      ---  @b1355in6mw171 \e[33m"
echo "************-----------++++---------************"

echo -e " \e[1;34m[*] \e[32m Purging previous package....\e[96m"

sudo apt purge apktool -y

echo -e " \e[1;34m[*] \e[32m Installing packages....\e[96m"

sudo apt install wget

echo -e "\e[1;34m[*] \e[4mexporting apktool_version=2.8.0" 
echo
echo -e "\e[96m-------++++wait for downloading++++------- \e[95m"

export apktool_version=2.8.0
sudo -E sh -c 'wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_$apktool_version.jar -O /usr/local/bin/apktool.jar'
echo
echo -e "\e[1;34m[+] \e[32mplease be patient \e[34m"
echo
echo -e  "\e[1;34m[✓]  \e[91m (file saved to usr/local/bin)"
echo
echo
sudo chmod +r /usr/local/bin/apktool.jar

sudo sh -c 'wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -O /usr/local/bin/apktool'
echo -e "\e[96m"
sudo chmod +x /usr/local/bin/apktool

sudo apt install -y default-jdk
sudo apt install default-jre


clear

echo -e "\e[96m+--------------------------------------*\e[0m"
echo -e "\e[1;95m Apktool Version2.8.0"
echo -e "\e[1;91m Type Apktool to run\e[0m"

echo -e  " usage: apktool \e[96m"
echo "-advance,--advanced   prints advance information."
echo " -version,--version    prints the version then exits"
echo "usage: apktool if|install-framework [options] <framework.apk>"
echo " -p,--frame-path <dir>   Stores framework files into <dir>."
echo " -t,--tag <tag>          Tag frameworks using <tag>."
echo "usage: apktool d[ecode] [options] <file_apk>"
echo " -f,--force              Force delete destination directory."
echo " -o,--output <dir>       The name of folder that gets written. Default is apk.out"
echo " -p,--frame-path <dir>   Uses framework files located in <dir>."
echo " -r,--no-res             Do not decode resources."
echo " -s,--no-src             Do not decode sources."
echo " -t,--frame-tag <tag>    Uses framework files tagged by <tag>."
echo "usage: apktool b[uild] [options] <app_path>"
echo " -f,--force-all          Skip changes detection and build all files."
echo " -o,--output <dir>       The name of apk that gets written. Default is dist/name.apk"
echo " -p,--frame-path <dir>   Uses framework files located in <dir>."
echo "don't forget to subscribe"
echo -e "\e[92m+--------------------------------------*"
