class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         attribute :name, :string
         validates :name, presence: true
end
