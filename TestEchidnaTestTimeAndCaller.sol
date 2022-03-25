//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8;

contract  TestEchidnaTestTimeAndCaller {

    bool private pass =true;

    uint private createdAt= block.timestamp;

    function echidna_test_pass() public view returns(bool){
        return pass;
    }

     function setFail() external{

        uint delay =70 days;
        require(block.timestamp >= createdAt +delay);
        pass =false;
    }
}