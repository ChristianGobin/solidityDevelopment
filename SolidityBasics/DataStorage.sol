//SPDX-License-Identifier: MIT
//Contract uses Structs, Arrays, Functions to populate an array of said Structs.
pragma solidity >=0.8.0;
contract DataStorage {

    struct Person {
        string firstName;
        string lastName;
        uint8 age;
    }

    Person[] private listOfPeople;

    function addPersonToList(string memory _first, string memory _last, uint8 _age) public {
        listOfPeople.push(Person(_first, _last, _age));
    }

    function showPersonByIndex(uint8 _index) public view returns(Person memory){
        return listOfPeople[_index];
    }

}
