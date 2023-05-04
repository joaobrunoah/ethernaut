pragma solidity ^0.8.0;

interface ITelephone {
    /*
     * This function is defined in https://ethernaut.openzeppelin.com/level/0x2C2307bb8824a0AbBf2CC7D76d8e63374D2f8446
     * @param _owner address of the new owner of Telephone instance
     */
    function changeOwner(address _owner) external;
}