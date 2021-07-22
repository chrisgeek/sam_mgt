class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_ROLES = %w[admin manager person].freeze

  validates :role, inclusion: { in: VALID_ROLES }

  def role?(role_title)
    role == role_title.to_s
  end

  VALID_ROLES.each do |method|
    define_method "#{method}?" do
      role? method
    end
  end
end
