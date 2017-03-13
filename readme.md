# Perth Ethereum Meetup 
As part of a presentation on Smart Contracts; the following are the instructions for setting up your own Ethereum development environment up and running.  These steps will take place about 20 minutes if all goes well.

##Assumptions
1. You are running on Mac OSX version 10.10+
2. You've some expereience of using the OSX Command Line Interface (CLI) and Terminal
3. Your willing to risk installing early stage development code. 
> Only attempt this if you feel confident as we can take no resonsibility for any negative impact on your machine after installing these services.

##Prerequisite
1. Install the latest version of GIT
Download the mac disc image DMG from [git-scm.com](http://git-scm.com/download/mac) and start the install process.  If you receive a security notification saying the code is unsigned; Go to System Preference/Security dialogue and you should see an option to “Open Anyway”.  Mount the downloaded DMG file and click the git pkg file.  Then simply follow all the the onscreen prompts, taking all the defaults.
2. Install Visual Studio Code (VSC), any other text editor can be used however VSC has a helpful Solidity plug-in which will be used as part of the course. Download the binary from [Microsoft](https://code.visualstudio.com/download) and once complete, copy the file to your Applications Folder.  Start the application using Mac Finder or by double clicking the icon in your Application folder.  You may be asked to confirm opening the file when firt used, if this happens click “Open". 
3. Get the Solidity VSC plug-in
Within VSC Open the extensions list by clicking View/Extensions from the menu.  Type “solidity” into the search box and you should be presented with the “Ethereum Solidity Language for Visual Studio Code” by Juan Blanco plug-in; click “install”
4. Install HomeBrew
following the instructions to install Xcode and HomeBrew from [coolestguidesontheplanet.com](https://coolestguidesontheplanet.com/installing-homebrew-on-os-x-el-capitan-10-11-package-manager-for-unix-apps/)

## Get the Ethereum specific Software
5. Install Geth
The easiest way to install GETH on a Mac is to use HomeBrew.  Open a terminal window and type:
```bash
brew tap ethereum/ethereum
brew install ethereum
```

6. Install Mist Wallet
Go to the Mist [release page](https://github.com/ethereum/mist/releases) and click on the latest version of Mac OSx (e.g. Ethereum-Wallet-macosx-0-8-9.dmg). Open the downloaded DMG file and mount the drive; then drag the application to your Applications folder.  Using finder, enter 'mist', on first execution will be asked to confirm execution, click “open”.

7. Get a copy of the code
Open a terminal window and type the following to create a development directory
```bash
cd ~/Documents/
mkdir Development
cd Development
git clone https://github.com/richardagreene/PerthEthereumMeetup.git
```


All the required code should download onto your Mac.

### Your done!  

Any contributions and suggestions are welcome!