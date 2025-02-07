// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract WrigglyToken is ERC20 {
    using SafeMath for uint256;

    address public owner;

    // Constructor: initializes the contract with a name and symbol
    constructor() ERC20("My Token", "MTKN") {
        owner = msg.sender; // Set the owner to the deployer's address
    }

    // Mint function to mint new tokens, only callable by the owner
    function mint(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint tokens");
        _mint(owner, amount);
    }

    // Burn function to burn tokens, only callable by the owner
    function burn(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can burn tokens");
        _burn(owner, amount);
    }

    // Get balance of the sender's account
    function getBalance() public view returns (uint256) {
        return balanceOf(msg.sender);
    }
