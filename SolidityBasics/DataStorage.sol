// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SimpleStorage {
    uint256 private tokenCount = 1_000_000;
    string private author = "Christian";
    
    //Structs = basically an object.
    struct Users {
        string username;
        uint256 age; 
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
        
    }


}