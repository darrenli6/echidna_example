//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.9;

contract Counter {
    uint public count;
    function inc() external {
        count+=1;
    }

    function dec() external{
        count-=1;
    }
}


contract TestCounter is Counter{

   function echidna_test_pass() public view returns(bool){
      return true;
   }
   

    function echidna_test_fails() public view returns(bool){
      return false;
   }

 

}