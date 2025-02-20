// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserPerformanceTracker {
    mapping(address => uint256) public userScores;

    function recordPerformance(uint256 score) public {
        userScores[msg.sender] = score;
    }

    function getPerformance(address user) public view returns (uint256) {
        return userScores[user];
    }
}  
