pragma solidity >=0.5.0;

interface IFENIXCallee {
    function zeroCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}