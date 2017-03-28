pragma solidity 0.4.10;

contract cashHolder {
    /* Define variable owner of the type address*/
    address public _owner;

    /* Define variable that shows address of the top funder */
    /* address public _topFunder; */

    /* Define variable to hold the amount raised*/
    uint public amountRaised;
    /* Define a public event */
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
    // The function to loop over all 
    // funders to find the highest
    // *******************************
    /*
    function getTopFunder() {
        uint amount=0;
        for(uint i=0;i<funders.length;i++)
            if(amount < funders[i].amount)
                _topFunder = funders[i].addr;
    }
    */

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