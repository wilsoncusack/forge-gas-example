// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import {CryptoPunks} from "src/CryptoPunks.sol";

interface Vm {
    function prank(address x) external;
}

contract ContractTest is DSTest {
    Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
    CryptoPunks punks = new CryptoPunks();

    function setUp() public {}

    function testMint() public {
        vm.prank(address(0x80AEA4EEed34806a038841656C2EDe5F0dC45e95));
        punks.mint();
    }
}
