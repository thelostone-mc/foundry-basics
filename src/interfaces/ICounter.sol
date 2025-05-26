// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface ICounter {

  /*///////////////////////////////////////////////////////////////
                            VARIABLES
  //////////////////////////////////////////////////////////////*/

  /**
   * @notice Get the current number
   * @return The current number
   */
  function number() external view returns (uint256);

  /*///////////////////////////////////////////////////////////////
                            LOGIC
  //////////////////////////////////////////////////////////////*/

 /**
  * @notice Set the number to a new value
  * @param _newNumber The new number to set
  */
  function setNumber(uint256 _newNumber) external;

  /**
   * @notice Increment the number by 1
   */
  function increment() external;

}