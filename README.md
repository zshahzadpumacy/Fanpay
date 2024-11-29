# Payment Contract
This repository includes a module from our Fanpay solution which is a prototype of a smart contract that is designed to run on the XRPL EVM sidechain of XRPL, while facilitating payment transactions with RLUSD stablecoins, XRP, and token-based rewards between fan communities (users) and merchants of sports league clubs. It allows a user to send a RLUSD or XRP payment to a recipient by calling the processPayment function. It ensures the proper transfer of funds and maintains a secure payment mechanism.

Each successful transaction is logged with the sender, recipient, and the amount transferred, making it easy to track payments and also Includes checks for valid recipient addresses and sufficient funds to prevent invalid transactions.

We will also add signature functionality for verification during the course of our development that will further increase transaction security.

## How It will Work
- The contract will be deployed to the XRPL EVM sidechain using a compatible tool like Hardhat or Truffle. 
- Users interact with the processPayment function, passing the recipient address and the payment amount.
- All successful transactions are logged through the PaymentProcessed event, providing transparency.

### Owner Withdrawals
The contract owner can withdraw any remaining balance using the withdraw function.

![Fanpay Architecture](https://github.com/zshahzadpumacy/Fanpay/blob/main/Images/Fanpay%20Architecture.png)

## Fanpay Application
Our plan is to build the FanPay application by modifying the Grail app source code we developed during Wave 4. FanPay will allow users to store XRP/RLUSD in a virtual card, which can then be used for payments at shops in sporting events. Users will generate a QR code for payment, which can be scanned by an Ingenico terminal to complete the transaction.
The Ingenico terminal will be connected to our Redimi API, which communicates with the EVM sidechain on XRPL to process the transaction and return the response to the terminal. Users will receive reward tokens against the transactions they make in the form of reward
tokens that are mined on XRPL. Following are some Grail App screenshots:

![Grail Screenshots](https://github.com/zshahzadpumacy/Fanpay/blob/main/Images/Combined.png)


