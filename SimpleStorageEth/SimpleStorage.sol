// SPDX-License-Identifier: MIT

// pragma statement sets compiler version
pragma solidity ^0.8.0;

// initial SimpleStorage contract creation
contract SimpleStorage {
    
    // global state variable of index, and Study struct declared
    uint index;

    struct Study {
        string programmingLanguage;
        string concentration;
    }

    // set index on creation of contract
    constructor(){
        index = 1;
    }

    // create mapping data type to keep track of new Study's added to StudyMapping
    // map according to index
    mapping(uint => Study) StudyMapping;

    // get Study data type by passing index int through to mapping
    function getStudyByIndex(uint _index) public returns(Study memory){
        
        // check that _index is within range of global index
        require(
            _index >= index,
            "Index is out of bounds!"
            );

        // set return value equal to Study at the given _index   
        Study memory reVal = StudyMapping[index];

        // iterate index variable after new Study is added to mapping
        index++;

        return(reVal);

    }

    // add new Study struct to map.
    function addStudyToMap(string memory _progammingLanguage, string memory _concentration) public returns(uint){
        StudyMapping[index] = Study(_progammingLanguage, _concentration);
        return 0;
    }
}

/*
    Contract Summary: 
    Creates a Custom Study Structure and adds Struct to Mapping using [Index => Struct] as the Value Pair.
*/
