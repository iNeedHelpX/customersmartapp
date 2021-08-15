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
    mapping(address => PackageDetails) packageMapping;

    //END DECLARATION
    function orderItem(uint256 _itemID, string _itemName)
        public
        returns (address)
    {
        address uniqueId = address(sha256(msg.sender, now));
        packageMapping[uniqueId].isUidGenerated = true;
        packageMapping[uniqueId].itemID = _itemID;
        packageMapping[uniqueId].itemName = _itemName;
    }
}
