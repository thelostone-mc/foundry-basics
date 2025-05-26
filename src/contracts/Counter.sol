// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ICounter} from "interfaces/ICounter.sol";

contract Counter is ICounter {
    uint256 public number;

    constructor(uint256 _initialNumber) {
        if (_initialNumber == 0) {
            revert InitialNumberZero();
        }
        number = _initialNumber;
    }

    function setNumber(uint256 _newNumber) public {
        number = _newNumber;
    }

    function increment() public {
        number++;
    }
}
