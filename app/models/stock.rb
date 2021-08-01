class Stock < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :quantity, presence: true
  validates :arrival_date, presence: true
  validate :product_quantity_is_greater_than_stock

  def product_quantity_is_greater_than_stock
    condition = product.quantity > self.quantity
    errors.add(:quantity, 'product quantity must be greater than stock') if condition
  end
end
