//SPDX-License-Identifier: MIT
//Contract uses Structs, Arrays, Functions to populate an array of said Structs.
pragma solidity >=0.8.0;
contract DataStorage {

    struct Person {
        string firstName;
        string lastName;
        uint8 age;
    }

    //Array Version -> Person[] private listOfPeople;
    //Use a mapping instead of array
    uint countOfPeople = 0;
    mapping(uint => Person) public listOfPeople;
    
    // Map Person to their last name
    mapping(string => string) public fullName;
    
    function addPersonToList(string memory _first, string memory _last, uint8 _age) public {
        //When function fires, increment amount of people in mapping.
        countOfPeople += 1;
        listOfPeople[countOfPeople] = Person(_first, _last, _age));
    }

    function showPersonByIndex(uint8 _index) public view returns(Person memory){
        return listOfPeople[_index];
       
    }

}
