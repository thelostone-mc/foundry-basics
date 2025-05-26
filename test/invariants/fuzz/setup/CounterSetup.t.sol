// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Counter} from "contracts/Counter.sol";
import {CommonBase} from "forge-std/Base.sol";

contract CounterSetup is CommonBase {
    Counter public counter;

    function setUp() public {
        counter = new Counter(1);
    }
}