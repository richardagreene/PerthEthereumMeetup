pragma solidity 0.4.9;

contract greeter-improved {
    /* define variable greeting of the type string */
    string greeting;
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) selfdestruct(owner); }

    /* this runs when the contract is created */
    function greeter(string _greeting) public {
        greeting = _greeting;
    }

    /* main function */
    function greet() constant returns (string) {
        // return the value set on creation
        return greeting;
    }

    // Set the greeting to a new value
    function setGreeting(string greeting ) {
        // set the new value for the greeting if called by the owner
        if (msg.sender == owner) {
            _greeting = greeting;
        }
    }
}