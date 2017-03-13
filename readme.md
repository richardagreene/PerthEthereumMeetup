# Perth Ethereum Meetup 
As part of a presentation on Smart Contracts; the following are instructions for setting up your own Ethereum development environment.  These steps will take about 20 minutes, if all goes well.

##Assumptions
1. You are running on Mac OSX version 10.10+
2. You've some expereience of using the OSX Command Line Interface (CLI) and Terminal
3. You're willing to risk installing early stage development code. 
> Only attempt this if you feel confident as we can take no resonsibility for any negative impact on your machine after installing this software.
4. You understand how to use elevated permissions on the Mac using the 'sudo' command.  This will occure if you see the "Error: Permission denied" error.

```bash
sudo <command>
```

##Prerequisite
1. Install the latest version of GIT
Download the Mac disc image DMG from [git-scm.com](http://git-scm.com/download/mac) and start the install process.  If you receive a security notification saying the code is unsigned; Go to System Preference/Security dialogue and you should see an option to “Open Anyway”.  Mount the downloaded DMG file and click the git pkg file.  Then simply follow all the onscreen prompts, taking all the defaults.
2. Install Visual Studio Code (VSC); note that any other text editor can be used however VSC has a helpful Solidity plug-in which will be used as part of the course. Download the binary from [Microsoft](https://code.visualstudio.com/download) and once complete, copy the file to your Applications Folder.  Start the application using Mac Finder or by double clicking the icon in your Application folder.  You may be asked to confirm opening the file when firt used, if this happens click “Open". 
3. Get the Solidity VSC plug-in; from within VSC Open the extensions list by clicking View/Extensions from the menu.  Type “solidity” into the search box and you should be presented with the “Ethereum Solidity Language for Visual Studio Code” by Juan Blanco plug-in; click “install”
4. Install HomeBrew
I followed the instructions from [coolestguidesontheplanet.com](https://coolestguidesontheplanet.com/installing-homebrew-on-os-x-el-capitan-10-11-package-manager-for-unix-apps/)
* First Install XCode from [Apple](https://itunes.apple.com/au/app/xcode/id497799835?mt=12&ign-mpt=uo%3D4)
* Then Install the XCode comamd line tools by opening a terminal window and typing

```bash
xcode-select --install
```

* Next install the HomeBrew system.

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* After installation check for any issues with the installation process

```bash
brew doctor
brew update
```

## Get the Ethereum specific Software
* Install Geth
The easiest way to install GETH on a Mac is to use HomeBrew.  Open a terminal window and type:

```bash
brew tap ethereum/ethereum
brew install ethereum
```

* Install Mist Wallet
Go to the Mist [release page](https://github.com/ethereum/mist/releases) and click on the latest version of Mac OSx (e.g. Ethereum-Wallet-macosx-0-8-9.dmg). Open the downloaded DMG file and mount the drive; then drag the application to your Applications folder.  Using Finder, enter 'mist', on first execution will be asked to confirm execution, click “open”.

* Get a copy of the code
Open a terminal window and type the following to create a development directory and download everything you'll need for the course.

```bash
cd ~/Documents/
mkdir Development
cd Development
git clone https://github.com/richardagreene/PerthEthereumMeetup.git
```

All the required code should download onto your Mac.

### Your done!  

Any contributions and suggestions are welcome!