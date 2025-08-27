# Fanpay
This repository holds FanPay project files. FanPay is a simple payment and loyalty system built directly on the XRP Ledger (XRPL). It lets fans pay merchants with RLUSD (an issued token on XRPL) or XRP, and also provides reward tokens for that. It connects fans with stadium or club merchants and works with Android POS terminals like Ingenico and Verifone.

All money moves use XRPL’s native transactions. The FanPay API handles the rest—making invoices, checking payments, and issuing rewards—off the ledger.

![Fanpay Architecture](https://github.com/zshahzadpumacy/Fanpay/blob/main/Images/Fanpay%20Architecture.png)

## XRPL features used

- Payment (XRP & issued currencies like RLUSD)

- TrustSet (for RLUSD acceptance)

- Memos (tamper-evident invoice metadata)

- Destination Tags (merchant routing)

## Fanpay Application
Our plan is to build the FanPay application by modifying the Grail app source code we developed during Wave 4. FanPay will allow users to store XRP/RLUSD in a virtual card, which can then be used for payments at shops in sporting events. Users will generate a QR code for payment, which can be scanned by an Ingenico terminal to complete the transaction.
The Ingenico terminal will be connected to our Redimi API, which communicates with XRPL to process the transaction and return the response to the terminal. Users will receive reward tokens against the transactions they make in the form of reward
tokens that are mined on XRPL. Following are some Grail App screenshots:

![Grail Screenshots](https://github.com/zshahzadpumacy/Fanpay/blob/main/Images/Combined.png)


