// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "./DataStorage.sol";
    //Deploy Original Data Storage Contract through this Contract.
    //Need to link original SimpleStorage.sol contract to this contract.
    //Objective = deploy contract through this contract.
    //Inheritance 
    
//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "./SimpleStorage.sol";

contract CallExternal {
    SimpleStorage public myStorage;
    function returnSomeData() public view returns(uint256, string memory){
        return(myStorage.getAuthorDetails());
    }
}
