// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract stores a number.
contract SimpleStorage {

    uint256 storageNumber;
    function storeNumber(uint256 _favorite) public {
        storageNumber = _favorite;
    }
    function showStorageNumber() public view returns(uint256){
        return storageNumber;
    }

}
