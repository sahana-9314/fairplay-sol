// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;


contract SendMoneyExample {
    
    uint public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }


    function withdrawMoney() public {
        address payable to= payable(msg.sender);
        to.transfer(address(this).balance);
    }

    function initialPayment(address workerAdress) public payable{
        uint256 initial=((address(this).balance)*20/100);
        payable(workerAdress).transfer(initial);

    }

     function withdrawRemainingBalance() public payable  {
        uint256 remaining = address(this).balance;
        payable(msg.sender).transfer(remaining);
    }
     
   
}

   
//0x63f1d36569a0F8824bF6B70043A12E19DA77279B