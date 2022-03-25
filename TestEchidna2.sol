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

   function echidna_test_count() public view returns(bool){
      return count<=5;
   }
   


 

}