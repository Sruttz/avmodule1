//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract handling{
    address owner;
    uint256 public a=10;
    uint256 public b=23;
    constructor (){
        owner=msg.sender;
    }
    
    function error1()public view returns(uint){
        require(msg.sender==owner,"Only owner can access");
        uint c=a * b;
        return c;
    }
    function error2()public view{
        if(b<50){
            revert("B should be greater than 50");
        }
        
    }
    function error3(uint256 x, uint256 y)public pure returns(uint){
        assert(x+y%2==0 && x-y%2!=0);
        return x/y;
    }
    
}
