class Client < ApplicationRecord
  belongs_to :company
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :email, presence: true
  validates :phone_no, presence: true
  validates :company_name, presence: true
  def to_s
    "#{first_name} #{last_name}"
  end
end
