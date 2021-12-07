// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import 'https://github.com/FenixFinance/Token-Contract/blob/master/ERC20PresetMinterPauser.sol';
import 'https://github.com/FenixFinance/Token-Contract/blob/master/ERC20Capped.sol';

contract FenixToken is ERC20PresetMinterPauser, ERC20Capped {
    constructor() public ERC20PresetMinterPauser('Fenix Token', 'FENIX') ERC20Capped(100000000e18) {}

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20PresetMinterPauser, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
