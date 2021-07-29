class Sale < ApplicationRecord
  belongs_to :product
  validates :quantity, presence: true
  validates :price, presence: true

end
