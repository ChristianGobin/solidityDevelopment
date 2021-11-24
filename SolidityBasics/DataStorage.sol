pragma solidity ^0.6.0;

contract DataStorage {
    string myString;
    int public myInt ;
    uint256 unsignedInt;
    bool myBool = false;

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

    // Declaring variable format -> type visibility name;
    // Declaring func = function name(dtype paramname) visibility returns(dtype){}
}