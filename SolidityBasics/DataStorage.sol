// First contract on the eth test net..
// Contract stores some data on the blockchain.


//Choose the version of the solidity compiler.
pragma solidity >= 0.6.0;

contract DataStorage {
    //if no value specified, then variable is assigned 0;
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

}