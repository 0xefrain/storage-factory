// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Import keyword just import  a external contract 
import "./SimpleStorage.sol";



contract StorageFactory{

    SimpleStorage []  public SimpleStorageArray;

    // Function Create a new SimpleStorageContract

    function CreateSimpleStorageContract () public{
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber ) public {

        // need address 
        // need ABI --> Aplication Binary Interface

        SimpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
        
      
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        return  SimpleStorageArray [_simpleStorageIndex].retrieve();
        

    }

}