pragma solidity 0.4.10;

contract greeter {
    /* define variable greeting of the type string */
    string _greeting;
    /* Define variable owner of the type address*/
    address _owner;

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == _owner) selfdestruct(_owner); }

    /* this runs when the contract is created */
    function greeter(string greeting) public {
        // set the owner to be the creator of the contract
        _owner = msg.sender;
        // set the greeting to the value passed in when first created
        _greeting = greeting;
    }

    /* main function */
    function greet() constant returns (string) {
        // return the value set on creation
        return _greeting;
    }
}