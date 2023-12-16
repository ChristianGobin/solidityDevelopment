// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public storageValue;

    // Function Stores Value in public variable.
    
    function storeValue(uint256 _storageValue) public {
        storageValue = _storageValue;
    }
}