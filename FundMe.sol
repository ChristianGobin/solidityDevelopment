// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    address public owner;
    mapping(address => uint256) public addressToBalance;

    // Initialize the contract owner and cast it as a payable address
    constructor(){
        owner = payable(msg.sender);
    }

    // Keep track of how much ether is sent to the address of this contract.
    function fund() public payable {
        addressToBalance[msg.sender] += msg.value;
    }
    
    // Allows owner of contract to withdraw funds from contract. function withdraw() public {}
}
