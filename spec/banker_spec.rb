require 'banker.rb'
require 'credit.rb'
require 'debit.rb'

describe Banker do

    describe '#new_transaction' do
      it 'takes and amount greater than 0 and creates a credit object equal to that amount' do
         expect(subject.new_transaction(99)).to eq(99)
       end

       it 'takes and amount less than 0 and creates a debit object equal to that amount' do
          expect(subject.new_transaction(-10)).to eq(-10)
        end

    end

end
