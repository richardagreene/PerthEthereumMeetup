cd ~/Documents/Development/PerthEthereumMeetup
rm ~/Library/Ethereum/geth.ipc
rm -rf devChain/geth/chainData
rm -rf devChain/geth/dapp
rm -rf devChain/geth/nodes
rm -rf devchain/geth/nodekey
rm  devchain/geth/LOCK

# remove Ethereum wallet details
rm -rf '/Users/richardagreene/Library/Application Support/Ethereum Wallet/IndexedDB/'

# start mining
geth  --genesis genesis_dev.json --rpc --mine --minerthreads 1 --gasprice 1 --ipcpath ~/Library/Ethereum/geth.ipc  --networkid=39318 --maxpeers=0 --datadir=devChain --rpccorsdomain "*" --rpcapi "eth,web3,personal,net,miner,admin" --ipcapi "eth,web3,personal,net,miner,admin" --verbosity 3 --unlock 0x12890d2cce102216644c59dae5baed380d84830c --password ethpassword.pwd --bootnodes enode://4073338a47be048fe41ddcecd3b291a865e3c50de3dd65405895bec4b3ac83237becd468a00533d2f057de92b3ad3e3d62f25b3dddcdddcc366977f30e8428c2@10.1.1.178:30303

