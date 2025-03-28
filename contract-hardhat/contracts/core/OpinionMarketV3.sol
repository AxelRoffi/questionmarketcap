// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./OpinionMarketV2.sol";

contract OpinionMarketV3 is OpinionMarketV2 {
    // Use some of the gap slots
    uint256 public newVariable;
    mapping(address => uint256) public userReputationScores;

    // Reduce gap by 2 since we used two slots
    uint256[45] private __gap;

    // Function to test storage
    function setNewVariable(uint256 value) external {
        newVariable = value;
    }
}
