#!/bin/bash
clear
cd ~/Library/Ethereum
deploymentScript="Documents/Development/PerthEthereumMeetup/deployment"
geth --preload "$HOME/$deploymentScript/registerContract.js" --rpccorsdomain "*" --rpcapi "eth,web3,personal,net,miner,admin" --ipcapi "eth,web3,personal,net,miner,admin" --datadir "~/Documents/Development/PerthEthereumMeetup/devChain" --dev attach ipc:geth.ipc console
exit
