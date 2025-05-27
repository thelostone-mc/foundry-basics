// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Counter} from "src/contracts/Counter.sol";
import {CommonBase} from "lib/forge-std/src/Base.sol";

contract CounterSetup is CommonBase {
    Counter public counter;

    function setUp() public {
        counter = new Counter(1);
    }
}
