//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7;

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

contract TestAssert {
    function test_assert(uint _i) external{
        assert(_i<10);
    }
}