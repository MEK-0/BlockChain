// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract kapsull{
   uint256 id;
   address owner;

    constructor(){
        owner = msg.sender;
    }

    function get_id() public view returns(uint256){
        return id;
    }

function set_id(uint8 _id) public returns(bool){
     
     if(_id ==42){
     id= _id; 
     } else {
     require(msg.sender == owner , "this only owner write 42");
     id=_id;
     }
     return true;
  } 

   
}
