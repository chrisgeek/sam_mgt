class Product < ApplicationRecord
  has_many :stocks, dependent: :destroy
  validates :name, presence: true
  validates :quantity, presence: true
end
