// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentProcessor {
    address public owner;

    event PaymentProcessed(address indexed sender, address indexed receiver, uint256 amount);

    constructor() {
        owner = msg.sender; 
    }

    /**
     * @dev Processes a signed payment transaction.
     * @param to The recipient's address.
     * @param amount The amount to send.
     */
    function processPayment(address to, uint256 amount) external payable {
        require(to != address(0), "Invalid recipient address");
        require(amount > 0, "Amount must be greater than zero");
        require(msg.value >= amount, "Insufficient funds sent");

        
        payable(to).transfer(amount);

        emit PaymentProcessed(msg.sender, to, amount);
    }

    /**
     * @dev Allows the owner to withdraw any leftover funds.
     */
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
