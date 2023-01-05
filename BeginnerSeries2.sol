// SPDX-License-Identifier: BSD-2-Clause
pragma solidity ^0.8.16;

contract Kata {
  function past(int h, int m, int s) public pure returns (uint) {
    // 1ms =  0.001s
    // 1s = 1_000ms
    // 1m = 60_000ms
    // 1hr = 3.6million ms
    // 24hr = 86_400_000ms
    
    //convert each measure of time to milliseconds
    uint h_ = uint(h * 3600000);
    uint m_ = uint(m * 60000);
    uint s_ = uint(s * 1000);
    
    uint answer = h_ + m_ + s_;
    return answer;
  }
}
