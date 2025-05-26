// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ICounter} from "interfaces/ICounter.sol";

contract Counter is ICounter {
    uint256 public number;

    function setNumber(uint256 _newNumber) public {
        number = _newNumber;
    }

    function increment() public {
        number++;
    }
}
