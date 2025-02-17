// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Test {
    // Function to perform modular addition
    function callAddMod(
        uint256 a,
        uint256 b,
        uint256 c
    ) public pure returns (uint) {
        return (a + b) % c;
    }

    // Function to perform modular multiplication
    function callMulMod(
        uint256 a,
        uint256 b,
        uint256 c
    ) public pure returns (uint) {
        return (a * b) % c;
}

  }

    
