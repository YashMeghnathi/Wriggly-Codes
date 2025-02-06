pragma solidity ^0.8.4;

// Abstract contract that provides a function but requires subclass to implement func2()
abstract contract Solution {
    function func1() public view returns(uint) {
        return 100;
    }

    function func2() public virtual view returns(uint);
}

// Derived contract that implements the abstract function func2
contract Sol is Solution {
    function func2() public override view returns(uint) {
        return 200; // Implement the function as required
    }
}
