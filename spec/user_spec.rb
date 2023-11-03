require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'is invalid without a name' do
    user = FactoryBot.build(:user, name: nil)
    expect(user).to_not be_valid
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    user = FactoryBot.build(:user, email: nil)
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is invalid with a duplicate email address' do
    existing_user = FactoryBot.create(:user, email: 'test@example.com')
    user = FactoryBot.build(:user, email: 'test@example.com')
    expect(user).to_not be_valid
    expect(user.errors[:email]).to include("has already been taken")
  end
end
