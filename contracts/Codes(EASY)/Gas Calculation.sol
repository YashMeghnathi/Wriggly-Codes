 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.4;

contract Gas {
    uint public c = 1;

    function calculateGas() external returns(uint) {
        uint gasBefore = gasleft(); // Capture gas before the operation
        
        ++c; // Increment the state variable
        
        uint gasAfter = gasleft(); // Capture gas after the operation
        
        return gasBefore - gasAfter; // Return the gas used
    }
}
