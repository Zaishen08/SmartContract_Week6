// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Fallback {
    event Log(string func, address sender, uint value, bytes data);
    
    fallback() external payable {
        emit Log("Fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("Receive", msg.sender, msg.value, "");
    }
}