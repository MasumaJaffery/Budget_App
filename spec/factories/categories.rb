# spec/factories/categories.rb

FactoryBot.define do
  factory :category do
    # Other attributes for your category factory
    association :user
  end
end
