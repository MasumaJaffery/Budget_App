# spec/models/category_spec.rb

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to have_many(:transactions) }
  it { is_expected.to have_one_attached(:icon) }
end
