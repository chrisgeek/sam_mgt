class Product < ApplicationRecord
  has_many :stocks
  validates :name, presence: true
  validates :quantity, presence: true
end
