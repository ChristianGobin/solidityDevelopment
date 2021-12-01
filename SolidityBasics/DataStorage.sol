// Version of Solidity
pragma solidity 0.8.10;

// Initial Contract Declaration
// Contract stores data on the blockchain.

contract DataStorage {


// Declaring variable
// Datatype visibility nameOfVar = value

    string myString;
    int myInt ;
    uint256 unsignedInt;
    bool myBool = false;

// Format for declaring a function.
// function funcName(dtypeOfParam paramName) visibility returns(dtype) { body }
    function setUint(uint256 _myUint) public {
        unsignedInt = _myUint;
    }

    function setInt(int _myInt) public {
        myInt = _myInt;
    }

    //view reads state, does not alter state on chain.
    function retrieveUint() public view returns(uint256){
        return unsignedInt;
    }
    
    function retrieveMyInt() public view returns(int) {
        return myInt;
    }
    
    //Create Struct and initialize Person named mike
    struct Person {
        uint age;
        string name;
    }

    Person public mike = Person({age: 32, name: "Mike"});
    
    // Dynamic Array called personList consisting of Person structs
    Person[] public personList;
    
    // memory keyword lets param be deleted after execution, vs storage keeps param in storage
    // add person to list by initializing person in push method
    function addPerson(uint _age, string memory _name) public {
        personList.push(Person(_age, _name));
    }
}
