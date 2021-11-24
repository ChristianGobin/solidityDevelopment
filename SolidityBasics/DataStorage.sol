// Version of Solidity
pragma solidity ^0.6.0;

// Initial Contract Declaration
// Contract stores data on the blockchain.

contract DataStorage {


// Declaring variable
// Datatype visibility nameOfVar = value

    string myString;
    int public myInt ;
    uint256 unsignedInt;
    bool myBool = false;
    
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
}
