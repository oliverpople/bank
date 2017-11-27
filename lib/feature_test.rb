require '/Users/oliverpople/Desktop/Makers/Projects/bank/lib/bank_account.rb'
require '/Users/oliverpople/Desktop/Makers/Projects/bank/lib/banker.rb'
require '/Users/oliverpople/Desktop/Makers/Projects/bank/lib/debit.rb'
require '/Users/oliverpople/Desktop/Makers/Projects/bank/lib/credit.rb'


bankaccount = BankAccount.new
banker = Banker.new
banker.new_transaction(1000, '10-01-2012')
banker.new_transaction(2000, '13-01-2012')
banker.new_transaction(500,' 14-01-2012')

p bankaccount.credit_array[:amount]
