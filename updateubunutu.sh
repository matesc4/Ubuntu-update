#!/usr/bin/zsh

## Ubuntu update file with zsh and zprezto-update
## source ~/.updateubunutu.sh

myreturn (){
if [[ $1 != "0" ]]; then
        exit $1
fi
}

echo
sudo snap refresh
myreturn $?

echo
sudo apt update --fix-missing
sudo apt-get update --fix-missing
myreturn $?

echo
sudo apt full-upgrade -y --fix-missing
sudo apt-get full-upgrade -y --fix-missing
myreturn $?

echo
sudo apt dist-upgrade -y --fix-missing
sudo apt-get dist-upgrade -y --fix-missing
myreturn $?

echo
sudo apt upgrade -y --fix-missing
sudo apt-get upgrade -y --fix-missing
myreturn $?

echo
sudo apt autoremove -y
sudo apt-get autoremove -y
myreturn $?

echo
zprezto-update
myreturn $?

echo
echo FINISH
return 0
