
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract has a vuln
contract ExampleVault {
    mapping(address => uint256) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() external {
        uint256 bal = balances[msg.sender];
        require(bal > 0, "No funds");
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Transfer failed");
        balances[msg.sender] = 0;
    }
}
