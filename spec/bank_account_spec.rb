require 'bank_account.rb'

describe BankAccount do

  it 'intilializes with a balance of 0' do
     expect(subject.get_balance).to eq(0)
  end

end
