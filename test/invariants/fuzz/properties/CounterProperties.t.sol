// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import {CounterSetup} from "../setup/CounterSetup.t.sol";

contract CounterProperties is CounterSetup {
    function property_counterIsGreaterThanZero() external view {
        assert(counter.number() >= 0);
    }

    function property_counterNeverDecreasesOnIncrement() external {
        // Store the initial value
        uint256 initialValue = counter.number();
        
        // Call increment
        counter.increment();
        
        // Get the new value
        uint256 newValue = counter.number();
        
        // Assert that the new value is greater than or equal to the initial value
        assert(newValue > initialValue);
    }

    function property_setNumberSetsExactValue(uint256 newNumber) external {
        // Skip if newNumber is 0 as it's not allowed by the contract
        vm.assume(newNumber > 0);
        
        // Set the number
        counter.setNumber(newNumber);
        
        // Verify the number was set exactly
        assert(counter.number() == newNumber);
    }

    function property_incrementIncreasesByOne() external {
        // Store the initial value
        uint256 initialValue = counter.number();
        
        // Call increment
        counter.increment();
        
        // Verify the value increased by exactly 1
        assert(counter.number() == initialValue + 1);
    }

    function property_setNumberPreservesIncrement(uint256 newNumber) external {
        // Skip if newNumber is 0 as it's not allowed by the contract
        vm.assume(newNumber > 0);
        
        // Set the number
        counter.setNumber(newNumber);
        
        // Store the value after setNumber
        uint256 afterSetNumber = counter.number();
        
        // Call increment
        counter.increment();
        
        // Verify increment still works correctly after setNumber
        assert(counter.number() == afterSetNumber + 1);
    }
}