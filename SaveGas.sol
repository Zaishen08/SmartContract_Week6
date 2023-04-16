// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract SaveGas {
    uint public n = 10; 

    function noCache() external view returns (uint) {
        uint s = 0;
        for (uint i = 0; i < n; i++) {
            s += 1;
        }

        return s;
    }

    function cache() external view returns (uint) {
        uint s = 0;
        uint _n = n;
        for (uint i = 0; i < _n; i++) {
            s += 1;
        }

        return s;
    }
}

/*
## no cache ##
n | gas
- - - - - - -
5    5680
10   10340   
100  91487
1000 968410
*/

/*
## cache ##
n | gas
- - - - - - -
5    1651
10   2274   
100  11870
1000 86486
*/