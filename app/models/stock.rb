class Stock < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :quantity, presence: true
  validates :arrival_date, presence: true
end
