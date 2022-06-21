// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // "^"above version  ">= Equal or above "

contract SimpleStorage{

    //Initialize to zero if not defined

    uint256  public  mynumber;


    //These  is a struct 

    struct Person {
        uint256 mynumber;
        string name;
    }

    // uint256[] its is a public Array;
    Person[] public person;



    //mapping data structs

     mapping(string => uint256) public nameMyNumber;


    // Function store changing blockchain state means spend gas

    function store ( uint256 _mynumber) public{
        mynumber = _mynumber;
    }

    //view and pure not spent gas only reading blockchain data 

    function retrieve () public view returns (uint256){
        return mynumber;
    }


    // memory,calldata,storage -->  EVM can acess and store data in six ways (stack,memory.storage,calldata,code,logs)
    // memory, calldata --> temporary storage
    // storage  --> permanent stoorage
    // string is array bytes for these using memory
    

    function addPerson(string memory _name, uint256 _mynumber) public {
        person.push(Person(_mynumber, _name));
        nameMyNumber[_name] = _mynumber;


    }

    
}
