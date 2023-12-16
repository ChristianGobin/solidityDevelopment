//SPDX-License-Identifier: MIT
import './SimpleStorage.sol';

pragma solidity ^0.8.0;

contract StorageFactory {
    SimpleStorage[] public sfFactory;

    function deployToSf() public {
        sfFactory.push(new SimpleStorage);
    }
}