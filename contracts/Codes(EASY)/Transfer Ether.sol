pragma solidity ^0.8.4;

contract Solution {
    // TODO: Create event here
  event TransferedEther(address receipient, uint amount);

    function transfer(address payable _to, uint256 _amount) public {
        require(_amount <= address(this).balance,"Insufficient balance");
        // TODO: transfer ether here
        _to.transfer(_amount);


        // TODO: emit event here
        emit TransferedEther(msg.sender, _amount);
    }

    function getBalance(address payable _address) public payable returns (uint256) {
        return _address.balance;
    }
}
