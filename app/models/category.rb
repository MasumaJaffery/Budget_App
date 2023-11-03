class Category < ApplicationRecord
  has_many :transactions
  has_one_attached :icon
  
  def total_sum
    transactions.sum(:amount)
  end
end
