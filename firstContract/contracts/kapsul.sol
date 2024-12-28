
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Kapsul{
  // uint. unsigned int 0 dan küçük olamaz 
  
  uint256 id;  // unit256 32 byte kaplar 
  address  owner; // 20 byte lik yer kaplar bu  bir slot 32 byte 

  mapping(address => uint256) balance;

   constructor(){
     owner = msg.sender;
   }

   function set_balance(address _wallet,uint256 _balance) public{
     balance[_wallet]=_balance;
   }

   function get_balance(address _wallet)public view returns (uint256){
         return balance[_wallet];
   }
   

  function get_id() public view returns(uint256){
     return id;
  }

  function set_id(uint8 _id) public returns(bool){
     
     require(msg.sender == owner , "this only owner functions");
     id= _id; 

     return true;
  } 
    
}

// view sadece okuma bişi değiştirmez
// pure hiç bişi yapmıyor oku yazma yok 
// payable ödemelerde kullanıyor 