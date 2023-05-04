pragma solidity ^0.8.0;

interface IToken {
    /*
     * This function is defined in https://ethernaut.openzeppelin.com/level/0x478f3476358Eb166Cb7adE4666d04fbdDB56C407
     * @param _to receiver of the tokens
     * @param _value amount of tokens to be received
     */
    function transfer(address _to, uint _value) external returns (bool);
}