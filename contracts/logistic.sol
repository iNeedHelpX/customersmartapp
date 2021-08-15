// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//assign delivery of item ordered by customer
contract Logistics {
    //DECLARATION
    struct packagedetails {
        address customer;
        bool isUidGenerated;
        //256 bit integer values
        uint256 itemID;
        uint256 orderStatus; //1 = ordered; 2 = in transit; 3 = delivered; 4 = cancelled
        uint256 orderTime;
        //name and status
        string itemName;
        string transitStatus;
    }
    mapping(address => packagedetails) public packageMapping;

    //END DECLARATION
    function OrderItem(uint256 _itemID, string _itemName)
        public
        returns (address)
    {
        address uniqueId = address(sha256(msg.sender, now));
        packageMapping[uniqueId].isUidGenerated = true;
        packageMapping[uniqueId].itemID = _itemID;
        packageMapping[uniqueId].itemName = _itemName;
        packageMapping[uniqueId]
            .transitStatus = "package ordered! Processing..";
        packageMapping[uniqueId].orderStatus = 1;
        packageMapping[uniqueId].customer = msg.sender;
        packageMapping[uniqueId].orderTime = now;
        return uniqueId;
    }
}
