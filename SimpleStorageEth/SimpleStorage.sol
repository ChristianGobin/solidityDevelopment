// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    Person[] public personArray;

    struct Person {
        uint256 age;
        string name;
    }

    function addToPersonArray(uint256 _age, string memory _name) public {
        personArray.push(Person(_age, _name));
    }
}
