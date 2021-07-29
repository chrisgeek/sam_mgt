class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :targets, dependent: :destroy
  VALID_ROLES = %w[admin manager person].freeze

  validates :role, inclusion: { in: VALID_ROLES }

  alias_attribute :to_s, :email

  def role?(role_title)
    role == role_title.to_s
  end

  VALID_ROLES.each do |method|
    define_method "#{method}?" do
      role? method
    end
  end

  def self.persons
    where(role: 'person')
  end
end
