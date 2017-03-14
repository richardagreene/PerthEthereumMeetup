pragma solidity 0.4.9;

contract cashHolder {
    /* Define variable owner of the type address*/
    address public _owner;
    uint public amountRaised;
    event FundsTransfer(address backer, uint amount);

    /* Collection of shareHolders */
    Funder[] public funders;
    /* data structure to hold information about contributors */
    struct Funder {
        address addr;
        uint amount;
    }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == _owner) selfdestruct(_owner); }

    /* this runs when the contract is created  */
    function cashHolder() public {
        // set the owner to be the creator of the contract
        _owner = msg.sender;
    }

    // *******************************
    // The function without name is the 
    // default function that is called whenever 
    // anyone sends funds to a contract
    // *******************************
    function () payable {
        uint amount = msg.value;
        funders[funders.length++] = Funder({addr: msg.sender, amount: amount});
        amountRaised += amount;
        FundsTransfer(msg.sender, amount);
    }
}