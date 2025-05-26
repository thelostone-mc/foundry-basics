// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {Test} from "forge-std/Test.sol";
import {Counter} from "contracts/Counter.sol";
import {ICounter} from "interfaces/ICounter.sol";

contract UnitTest is Test {
    ICounter public counter;

    function setUp() public {
        counter = new Counter(1);
    }

    function test_ConstructorWhenPassingValidInitialNumber() external view {
        assertEq(counter.number(), 1);
    }

    function test_ConstructorWhenPassingZeroAsInitialNumber() external {
        vm.expectRevert(ICounter.InitialNumberZero.selector);
        new Counter(0);
    }

    function test_SetNumberWhenCalled() external {
        // it sets the number to the new number
        counter.setNumber(2);
        assertEq(counter.number(), 2);
    }

    function test_IncrementWhenCalled() external {
        // it increments the number by 1
        assertEq(counter.number(), 1);
        counter.increment();
        assertEq(counter.number(), 2);
    }

    function test_NumberWhenCalled() external view {
        // it returns the current number
        assertEq(counter.number(), 1);
    }
}
