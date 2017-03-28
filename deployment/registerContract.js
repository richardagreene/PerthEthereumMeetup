console.log('Starting contract deployment.....');

baseContractAbi=<add your interface here>

baseContractBytecode='0x<add to binary here>';

// Verify this at any stage using 
//    eth.getCode("<contract address>")
//

var _greeting = "Hello World!";
var greeterContract = web3.eth.contract(baseContractAbi);
var greeter = greeterContract.new(
   _greeting,
   {
     from:web3.eth.accounts[0], 
     data: baseContractBytecode, 
     gas: 3000000}, 
function(e, contract){
    console.log(e, contract);
    if (typeof contract.address != 'undefined') {
         console.log('Contract mined! address: ' + contract.address + ' transactionHash: ' + contract.transactionHash);
    }
})
console.log('Completed contract deployment.....');
