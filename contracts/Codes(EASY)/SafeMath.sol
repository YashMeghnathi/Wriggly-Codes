pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract SafeMathExample {
    using SafeMath for uint256;

    uint256 public value;

    // Add function
    function add(uint256 x, uint256 y) public {
        value = x.add(y); // Set the result of x + y to the 'value' state
    }

    // Subtract function
    function sub(uint256 x, uint256 y) public {
        value= x.sub(y);
    }

    // Multiply function
    function mul(uint256 x, uint256 y) public {
        value = x.mul(y);
    }

    // Division function with zero-check
    function div(uint256 x, uint256 y) public {
        require(y > 0, "Division by zero");
        value = x.div(y);
    }

    // Getter function for 'value'
    function get() public view returns (uint256) {
        return value;
    }
}
