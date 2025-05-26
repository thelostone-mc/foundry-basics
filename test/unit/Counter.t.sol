// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Test} from "forge-std/Test.sol";
import {Counter} from "contracts/Counter.sol";

contract UnitCounter is Test {
    Counter internal _counter;

    error InvalidNumber();

    function setUp() external {
        _counter = new Counter(1);
    }

    function test_ConstructorWhenPassingValidInitialNumber() external view {
        assertEq(_counter.number(), 1);
    }

    function test_ConstructorWhenPassingZeroAsInitialNumber() external {
        vm.expectRevert(InvalidNumber.selector);
        new Counter(0);
    }

    function test_SetNumberWhenCalled() external {
        // it sets the number to the new number
        _counter.setNumber(2);
        assertEq(_counter.number(), 2);
    }

    function test_IncrementWhenCalled() external {
        // it increments the number by 1
        assertEq(_counter.number(), 1);
        _counter.increment();
        assertEq(_counter.number(), 2);
    }

    function test_NumberWhenCalled() external view {
        // it returns the current number
        assertEq(_counter.number(), 1);
    }
}
