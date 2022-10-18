//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    struct Car {
        string make;
        string model;
        uint256 year;
    }

    // Array of Car Structures
    Car[] public carList;

    // Mapping of Car Structs
    mapping(uint256 => Car) public carMap;

    /* 
    
    Instead of repeating those long arugments needed for function, let us make a helper function to create the car,
    and a seperate function to push to either Data structure. (map & array)

    function generateCarForList(string memory _make, string memory _model, uint256 _year) public {

    }

    function generateCarForMap(string memory _make, string memory _model, uint256 _year) public {

    }
    */

    function generateCar(string memory _make, string memory _model, uint256 _year) public pure returns(Car memory){
        return(Car(_make, _model, _year));
    }

    function pushToStruct(bool pushToMap, bool pushToArray, Car memory _car) public {
        if(pushToMap) {
            uint256 index = 0;
            carMap[index] = _car;
            index = index + 1;
        }
        if (pushToArray){
            carList.push(_car);
        }

    }

}