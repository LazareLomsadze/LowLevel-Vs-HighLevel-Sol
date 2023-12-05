// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A {
    uint sum;
    function storeSum(address b) external {
        (bool success, bytes memory returnData) = 
        b.call(abi.encodeWithSignature("add (uint256, uint256)", 5, 10));
        sum = abi.decode(returnData, (uint));
        require(success);
    }
}
contract B {
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }
}