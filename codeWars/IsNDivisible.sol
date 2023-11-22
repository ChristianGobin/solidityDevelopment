// codewars link to problem: https://www.codewars.com/kata/5545f109004975ea66000086/train/solidity
// objective: determine if int n is divisible by both x and y, return true or false for each case.
// SPDX-License-Identifier: BSD-2-Clause

pragma solidity ^0.8.16;

contract Kata {
  function isDivisible(int n, int x, int y) public pure returns (bool) {
    if(n % x == 0 && n % y == 0){
      return true;
    }
    return false;
  }
}