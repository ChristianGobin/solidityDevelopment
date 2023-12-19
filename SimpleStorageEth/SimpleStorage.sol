// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    struct Person {
        string name;
        uint favoriteNumber;
    }

    Person[] personArray;
    mapping(string => uint256) nameToNumber;

    function createNewPerson(string memory _name, uint256 _favoriteNumber) internal pure returns(Person memory){
        Person memory newPerson = Person({name: _name, favoriteNumber: _favoriteNumber});
        return newPerson;
    }

    function pushPersonToArray(string memory _name, uint _favoriteNumber) public {
        personArray.push(createNewPerson(_name, _favoriteNumber));
        nameToNumber[_name] = _favoriteNumber;
    }

    function retrievePersonNumber(string memory _name) public view returns(uint256) {
        return(nameToNumber[_name]);
    }


}

/* 
    This contract demonstrates complex data types, simple data types, functions, access modifiers, and callback functions.
    mappings
    arrays
    variables
    public and internal functions

    Deployed to Sepolia Test Net 12/19/23
    address of this contract: 0x0FD893F83C6de5572cBAe98f5d814b1320457d8B
*/