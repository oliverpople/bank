require 'bank_account.rb'

describe BankAccount do

it 'intilializes with a balance of 0' do
  expect(subject.get_balance).to eq(0)
end

describe '#add_credit_to_array' do
  it 'takes a credit object and stores it in an array' do
    credit = Credit.new(10, '10-01-2012')
    subject.add_credit_to_array(credit)
    expect(subject.get_credit_array).to include(credit)
  end
end

describe '#add_credit_to_account_balance' do
  it 'takes credit amount and adds it to the accounts balance' do
    credit = Credit.new(10, '10-01-2012')
    subject.add_credit_to_account_balance(credit)
    expect(subject.get_balance).to eq(10)
  end
end

describe '#add_debit_to_array' do
  it 'takes a debit object and stores it in an array' do
    debit = Debit.new(-10, '10-01-2012')
    subject.add_debit_to_array(debit)
    expect(subject.get_debit_array).to include(debit)
  end
end

describe '#subtract_debit_from_account_balance' do
  it 'takes debit amount and subtracts it from the accounts balance' do
    debit = Debit.new(-10, '10-01-2012')
    subject.subtract_debit_from_account_balance(debit)
    expect(subject.get_balance).to eq(-10)
  end
end

# describe '#get_balance_sheet' do
#   it 'prints all credit, debits and balances for every recorded transaction' do
#     credit = Credit.new(1000, '10-01-2012')
#     credit2 = Credit.new(2000, '13-01-2012')
#     debit = Debit.new(500,' 14-01-2012')
#     subject.get_balance_sheet
#   #   expect(subject.get_balance_sheet).to include(1000, '10-01-2012', 2000, '13-01-2012', 500,' 14-01-2012')
#    end
# end

end
