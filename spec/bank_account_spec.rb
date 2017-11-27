require 'bank_account.rb'

describe BankAccount do

  it 'intilializes with a balance of 0' do
     expect(subject.get_balance).to eq(0)
  end

  it 'takes a credit object and stores it in an array' do
    credit = Credit.new(10)
    subject.add_credit_to_array(credit)
    expect(subject.get_credit_array).to include(credit)
  end

end
