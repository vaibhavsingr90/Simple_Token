// SPDX-License-Identifier: MIT
pragma solidity  0.8.1;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.1.0/contracts/token/ERC20/ERC20.sol";


contract SimpleToken is ERC20 {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() public ERC20("SimpleToken", "SIM") {
        _mint(msg.sender, 10000 * (10 ** uint256(decimals())));
    }
}

