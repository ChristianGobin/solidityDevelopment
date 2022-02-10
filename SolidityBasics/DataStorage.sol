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
    
    // Map Person to their last name
    mapping(string => string) public fullName;
    
    function addPersonToList(string memory _first, string memory _last, uint8 _age) public {
        listOfPeople.push(Person(_first, _last, _age));
        //When a person is added to list, map their first name to last name.
        fullName[_first] = _last;
    }

    function showPersonByIndex(uint8 _index) public view returns(Person memory){
        return listOfPeople[_index];
       
    }

}
