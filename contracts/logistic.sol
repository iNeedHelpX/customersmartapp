// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//assign delivery of item ordered by customer
contract Logistics {
    //DECLARATION
    struct PackageDetails {
        address customer;
        bool isUidGenerated;
        //256 bit integer values
        uint256 itemID;
        uint256 orderStatus;
        uint256 orderTime;
        //name and status
        string itemName;
        string transitStatus;
    }
    //END DECLARATION
}
