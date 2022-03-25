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
     
    function abs(uint x,uint y) private pure returns(uint){
        if (x>=y){
            return x-y;
        }
        return y-x;
    }

    function test_abs(uint x,uint y) external{
        uint z= abs(x,y);
        if(x>=y){
            assert(z <=x);
        }else{
            assert(z<=y);
        }
    }
}