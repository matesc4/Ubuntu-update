#!/usr/local/bin/zsh

## updates mac with brew / cask and zpresto-update
## source ~/updatemac.sh || echo $?


myreturn (){
if [[ $1 != "0" ]]; then
        exit $1
fi
}

myperform3 (){
echo
echo brew $1 $2 $3
echo
brew $1 $2 $3
myreturn $?
sleep 1
}

myperform2 (){
echo
echo brew $1 $2
echo
brew $1 $2
myreturn $?
sleep 1
}

myperform3 cleanup -s --verbose
#echo gem cleanup --verbose
myperform2 config --verbose
brew doctor --verbose ## currently without return check, bc. of an brew error notification
myperform3 update --force --verbose
myperform2 upgrade --verbose
myperform3 cask audit --verbose
myperform3 cask doctor --verbose
#myperform3 cask style --fix
myperform3 cask upgrade --verbose
#myperform2 cleanup --verbose

sleep 1
echo
echo zprezto-update
zprezto-update
myreturn $?

echo
echo FINISH
return 0
