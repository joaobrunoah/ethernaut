pragma solidity ^0.8.0;

interface ICoinFlip {
    /*
     * This function is defined in https://ethernaut.openzeppelin.com/level/0xA62fE5344FE62AdC1F356447B669E9E6D10abaaF
     * @param _guess contains the guessing of the next result of the coin flip (true or false)
     */
    function flip(bool _guess) external returns (bool);
}