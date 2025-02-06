// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Sol {
    function getStringLength(string memory str) public pure returns (uint) {
        return bytes(str).length;
    }
}
