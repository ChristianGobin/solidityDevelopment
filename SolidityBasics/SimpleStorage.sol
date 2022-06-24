//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    //Data Types: boolean, uint256, int256, bytes32, be specific in size of bits used.
    //Storage of People types aka structures
    struct User {
        string username;
        uint id;
    }

    //mappings are essentially dictionaries. Better for organizing lists of data.
    mapping(uint256 => User) public userIdMap;

    //mapIndex is made public so we're able to see how many items are in the map. As to not cause index errors.
    uint256 public mapIndex;

    function addToUserIdMap(string memory _username) public {
        userIdMap[mapIndex] = User(_username, mapIndex);
        mapIndex++;
    }
    
    function lookupUserId(uint256 _mapIndex) public view returns(User memory){
        return userIdMap[_mapIndex];
    }

}
