class Target < ApplicationRecord
  belongs_to :user

  validates :due_date, presence: true
  validates :value, presence: true
  validates :status, presence: true

  def self.valid_status
    %w[achieved not_achieved pending]
  end
end
