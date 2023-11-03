# spec/models/transaction_spec.rb

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:user) }

  describe 'validations' do
    it 'validates that the amount is present' do
      transaction = FactoryBot.build(:transaction, amount: nil)
      expect(transaction).not_to be_valid
    end

    it 'validates that the amount is greater than or equal to 0' do
      transaction = FactoryBot.build(:transaction, amount: -100)
      expect(transaction).not_to be_valid
    end

    it 'validates that the category is present' do
      transaction = FactoryBot.build(:transaction, category: nil)
      expect(transaction).not_to be_valid
    end
  end
end