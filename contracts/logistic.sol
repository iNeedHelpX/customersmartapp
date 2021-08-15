// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//assign delivery of item ordered by customer
contract Logistics {
    struct package {
        bool isUidGenerated;
        uint256 itemID;
        string itemName;
        uint256 orderStatus;
        string transitStatus;
        address customer;
        uint256 orderTime;
    }
}
