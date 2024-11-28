# Payment Contract
This repository includes a module from Fanpay solution which is a prototype of smart contract that is designed to run on the XRPL EVM sidechain and facilitates payment transactions between users. It allows a user to send a payment to a recipient by calling the processPayment function. It ensures the proper transfer of funds and maintains a secure payment mechanism.

Each successful transaction is logged with the sender, recipient, and the amount transferred, making it easy to track payments and also Includes checks for valid recipient addresses and sufficient funds to prevent invalid transactions.

We will also add signature functionality for verification during the course of our development that will further increase transaction security.

## How It will Work
- The contract will be deployed to the XRPL EVM sidechain using a compatible tool like Hardhat or Truffle. 
- Users interact with the processPayment function, passing the recipient address and the payment amount.
- All successful transactions are logged through the PaymentProcessed event, providing transparency.

### Owner Withdrawals:
The contract owner can withdraw any remaining balance using the withdraw function.
