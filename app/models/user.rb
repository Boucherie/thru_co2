class User < ApplicationRecord
  has_secure_password

  belongs_to :team
  has_many :scores

  validates :email, presence: true, uniqueness: true
end
