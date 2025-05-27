// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {ICounter} from "src/interfaces/ICounter.sol";

contract Counter is ICounter {
    uint256 public number;

    constructor(uint256 _initialNumber) {
        if (_initialNumber == 0) {
            revert InvalidNumber();
        }
        number = _initialNumber;
    }

    function setNumber(uint256 _newNumber) public {
        if (_newNumber == 0) {
            revert InvalidNumber();
        }
        number = _newNumber;
    }

    function increment() public {
        number++;
    }
}
