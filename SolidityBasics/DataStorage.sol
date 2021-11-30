// Version of Solidity
pragma solidity ^0.6.0;

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
    
    //Create Struct and initialize
    struct Person {
        uint age;
        string name;
    }

    Person public mike = Person({age: 32, name: "Mike"});
    
    // Dynamic Array called classroom consisting of Person structs
    Person[] public classroom;
    
    // Attempt to populate the array.
    function populateClassroom(uint256 _age, string memory _name) public {
        uint256 count = 0;
        while(count < 16){
            classroom.push(Person({age: 23, name: "Kid"}));
            count += 1;
        }
    }

    // Attempt to show array values.
    function showClassRoster() public returns(string){
        for(uint x = 1; x <= 15; x++){
            return(classroom.name[x]);
        }
    
}
