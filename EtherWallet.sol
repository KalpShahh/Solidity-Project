// SPDX-License-Identifier: MIT
pragma solidity >0.8.4;

contract Wallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() external payable {}

    // receive() external  payable { }

    function withdraw(address payable _to, uint256 amount) external {
        require(owner == msg.sender, "caller is not owner");
        _to.transfer(amount);
    }

    function getbalance() public view returns (uint256) {
        return address(this).balance;
    }
}
