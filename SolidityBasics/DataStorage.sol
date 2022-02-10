// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage {
    uint256 private tokenCount = 1_000_000;
    string private author = "Christian";
    
    //Structs = custom data types with properties defined by user
    struct Users {
        string username;
        uint256 age;
        int debt;
        uint currentHoldings;
    }
    
    //Array of users
    Users[] public myUsers;

    //Populate Array
    function populateArray(uint256 _age, string memory _name) public {
        myUsers.push(Users(_name, _age));
    }


    function showTokenCount() public view returns(uint256){
        return tokenCount;
    }

    function showAuthor() public view returns(string memory){
        return author;
    }

    // Mapping -> basically a dictionary
    mapping (string => string) public actualDictionary;
    
    function addToActual(string memory word, string memory definition) public {
        actualDictionary[word] = definition;
    }

    //Integer Array
    uint256[] public integers;
    
    function addToIntegerArray(uint256 _int) public {
        integers.push(_int);
    }


}
