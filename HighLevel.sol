// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A {
    uint sum;
    function storeSum(B b) external {
        sum = b.add(5, 10);
    }
}
interface B {
    function add(uint, uint) external returns(uint);
}
