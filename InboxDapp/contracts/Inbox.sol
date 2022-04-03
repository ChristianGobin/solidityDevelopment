//SPDX-License-Identifier: MIT
pragma solidity >=0.4.0;
contract Inbox {
    string private userName;
    function Inbox(string memory _userName) public {
        userName = _userName;
    }

    function getUserName() public view returns(string memory){
        return userName;
    }

    function setUserName(string memory _userName) public {
        userName = _userName;
    }
}