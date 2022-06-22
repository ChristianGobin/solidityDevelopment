//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "./SimpleStorage.sol";
contract StorageFactory {
    struct ContractAndBool {
        SimpleStorage contractAddress;
        bool wasCreated;
    }

    mapping(uint256 => ContractAndBool) public tableOfStorage;
    uint256 count = 0;

    function generateContract() public {
        SimpleStorage newSimpleStorage;
        tableOfStorage[count] = ContractAndBool(newSimpleStorage, true);
        count++;
    }
}
