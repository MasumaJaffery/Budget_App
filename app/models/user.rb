class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attribute :name, :string
  validates :name, presence: true

  has_many :transactions
  has_many :categories
  validates :email, presence: true, uniqueness: true
end
