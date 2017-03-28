pragma solidity 0.4.10;

contract greeter2 {
    /* define variable greeting of the type string */
    string public _greeting;
    /* Define variable owner of the type address*/
    address public _owner;

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == _owner) selfdestruct(_owner); }

    /* this runs when the contract is created  */
    function greeter2() public {
        // set the owner to be the creator of the contract
        _owner = msg.sender;
        // this time we don't set the value on creation
        //greeting = _greeting;
    }

    /* main function */
    function greet() returns (string) {
        // return the value set on creation
        return _greeting;
    }

    // *******************************
    // New public function that will
    // set the greeting to a new value
    // when required
    // *******************************
    function setGreeting(string greeting ) {
        _greeting = greeting;
    }
}