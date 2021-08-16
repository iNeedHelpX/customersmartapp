// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//payments contract to accept ether
contract Wallet {
    event Deposit(address sender, uint256 amount, uint256 balance);
    event Withdraw(uint256 amount, uint256 balance);
    event Transfer(address to, uint256 amount, uint256 balance);
}
