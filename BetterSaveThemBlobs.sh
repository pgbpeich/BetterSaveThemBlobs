#!/bin/bash
echo BetterSaveThemBlobs By jst9n
echo Thanks @tihmstar for tsschecker_macos
echo Thanks to @iTrickzGG and @2klasic for the idea

echo Make sure these certain dependencies are installed to run tsschecker_macos

echo " "
echo " "
echo "Choose your Options"
echo "Do you want to:"
echo "======================================="
echo "[1] Install tsschecker dependencies"
echo "[2] Save shsh2 blobs with tsschecker"
echo "[3] Exit"
echo "======================================="
read e
if [ "$e" = "1" ]
	then
	 # Ask for the administrator password upfront.
        sudo -v

        # Keep-alive: update existing `sudo` time stamp until the script has finished.
        while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install curl
brew install git
 cd ~/
 	git clone http://git.libimobiledevice.org/libplist.git
	git clone https://github.com/derobi/libcrippy.git
	git clone https://github.com/derobi/libpartialzip.git
	sleep 3[s]
	echo "Installing libplist Dependencies"
	cd ~/libplist
	./autogen.sh
	make
	sudo make install
echo "Installing Libcrippy Dependencies"
cd ~/libcrippy/
	chmod +x autogen.sh
	./autogen.sh && make && sudo make install
echo "Installing libpartialzip Dependencies"
cd ~/libpartialzip
	chmod +x autogen.sh
 ./autogen.sh && make && sudo make install

 rm -rf ~/{lib*,curl}
 clear

elif [ "$e" = "2" ]
		then
		# Ask for the administrator password upfront.
        sudo -v

        # Keep-alive: update existing `sudo` time stamp until the script has finished.
        while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

killall Finder
killall Terminal

else


	killall Terminal

fi

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
    echo "Tsschecker_macos Doesnt Exist, Move tsschecker_macos to your desktop!"

exit
fi

#plug your device info here!
model=YOUR DEVICE MODEL (Example=iPhone7,2)
boardconfig=YOUR BOARDCONFIG
ecid=YOUR OWN ECID

#always saves latest baseband!
./tsschecker_macos -d $model --boardconfig $boardconfig -l -e $ecid -s --save-path ~/Desktop

elif [ "$e" = "3" ]
		then

killall Finder
killall Terminal

			else


	killall Terminal

fi
