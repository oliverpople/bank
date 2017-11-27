## Bank

## Project Overview

This project is a simple example tech test.  The purpose of this test is to practise the skills required to successfully pass a tech test (including but not limited to - Using TDD, good documentation and writing clear code).  The challenge for this test is to write a simple banking program with the following requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Design Approach

As this is a simple logic-based program with console interface I have chosen to use Ruby for my production code and rspec to test.

Here is the first draft of my design:


[INTERFACE]                                 [BANKER]                    [CREDIT] / [DEBIT]    [BANK ACCOUNT]
      |
      |   new_transaction(date, amount, type)  |  create_transaction(amount, date)|                |            
      | -------------------------------------> | -------------------------------> |                |            
      |                                        | <------------------------------- |                |                                                               |                                        |  (new_credit/debit(amount, date)                  |                                  
      |                                        | add_to_account(new credit/debit(amount, date))    |       
      |                                        | ------------------------------------------------->|   
      |    see_bank_statement             get_bank_statement                                       |
      | ------------------------------------->|  ------------------------------------------------> |
      | <------------------------------------------------------------------------------------------|
                                         (bank_statement(date, credit/debit, amount, balance))

## Potential Design Challenges:

I'm still not sure what the best data structure for transactions are. My initial approach will be to create credit / debit hash objects that contain the amount and transaction date.


## User Stories

```
As a client
So I can save my money
I want to deposit money at the bank

As a client
So I can have my money
I want to withdraw my money from the bank

As a client
So I know how much money I have
I want to see my current balance

As a client
So I know when I previously deposited money
I want see the date in a bank statement

As a client
So I know when I previously withdrew money
I want see the date in a bank statement

As a client
So I know what my balance was previously
I want see my balance at each transaction date in my bank statement
```
