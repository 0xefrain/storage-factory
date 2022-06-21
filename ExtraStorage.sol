// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

//inheritance using "is" keyword
// Extrastorage Contract Inherit functionality from SimpleStorage

contract ExtraStorage is SimpleStorage {

// Virtual
// Override 

    function store ( uint256 _mynumber) public override{
        mynumber = _mynumber + 10;
    }
    
}