require 'banker.rb'
require 'credit.rb'
require 'debit.rb'

describe Banker do

    describe '#new_transaction' do
      it 'takes and amount greater than 0 and creates a credit object equal to that amount' do
        credit = subject.new_transaction(99)
        expect(credit.get_amount).to eq(99)

       end

       it 'takes and amount less than 0 and creates a debit object equal to that amount' do
        debit = subject.new_transaction(-10)
        expect(debit.get_amount).to eq(-10)
        end

        it 'raises and error if transaction is equal to 0' do
           expect(subject.new_transaction(0)).to eq('0 sized transactions are useless')
         end




    end

end
