pragma solidity ^0.8.4;

contract Pool {
    // Define the enum State with three possible states for the pool
    enum State { Initialized, Finalized, Deactivated }

    // Declare the poolState variable of type State
    State public poolState;

    // Constructor to set the initial poolState
    constructor() {
        // Set poolState to a valid state, Initialized
        poolState = State.Initialized;
    }

    /**
        @dev   Checks if the pool is in the valid state (Initialized).
        @return True if the pool is in the valid state, false otherwise.
    */
    function isValidState() public view returns (bool) {
        // Check if the poolState is Initialized
        return poolState == State.Initialized;
    }
}
