#!/bin/bash
#BetterSaveThemBlobs By jst9n
#Thanks @tihmstar for tsschecker_macos
#Thanks to @iTrickzGG and @2klasic for the idea

#Make sure these certain dependencies are installed to run tsschecker_macos
* libcurl
* libplist
* libfragmentzip

#Downloading tsschecker..
open -a Safari http://api.tihmstar.net/builds/tsschecker/tsschecker-latest.zip

#unzipping..
unzip ~/Downloads/tsschecker-latest.zip

#changing dir..
cd ~/Desktop

#turning tsschecker into a executable..
if [ ! -e ~/Desktop/tsschecker_macos ]; then
    chmod +x tsschecker_macos

#checking for tsschecker_macos..
if [ ! -e ~/Desktop/tsschecker_macos ]; then
    echo "Tsschecker_macos Doesnt Exist!"
    echo "Move tsschecker to your desktop!"
exit
fi

#plug your device info here!
model=YOUR DEVICE MODEL (Example=iPhone7,2)
boardconfig=YOUR BOARDCONFIG
ecid=YOUR OWN ECID

#always saves latest baseband!
./tsschecker_macos -d $model --boardconfig $boardconfig -l -e $ecid -s --save-path ~/Desktop
