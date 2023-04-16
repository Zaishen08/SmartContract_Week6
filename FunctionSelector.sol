// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionSelector {
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}

contract Receiver {
    event Log(bytes data);
    
    function transfer(address _to, uint _amount) external {
        emit Log(msg.data); 
        // 4 bytes:0xa9059cbb
        // _to:0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc
        // _amount:4000000000000000000000000000000000000000000000000000000000000000b
    }
}