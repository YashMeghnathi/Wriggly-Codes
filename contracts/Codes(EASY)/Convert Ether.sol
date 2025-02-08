// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherConverter {
    // Function to convert Ether to Wei
    function etherToWei(uint256 etherAmount) public pure returns (uint256) {
        return etherAmount * 10**18; // 
    }
    
    // Function to convert Wei to Ether
    function weiToEther(uint256 weiAmount) public pure returns (uint256) {
        return weiAmount / 10**18; // 
    }
}
