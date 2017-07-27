class User < ApplicationRecord
  has_secure_password

  belongs_to :team , optional: true
  has_many :scores

  validates :email, uniqueness: true, presence: true, on: :create

  validates_length_of :password, :in => 8..20, on: :create
  validates :password, presence: true, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create
end
