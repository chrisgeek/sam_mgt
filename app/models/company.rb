class Company < ApplicationRecord
  has_many :clients

  validates :name, presence: true
  validates :phone_no, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
end
