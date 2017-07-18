class User < ApplicationRecord
  has_secure_password

  belongs_to :team
  has_many :scores

  validates :email, uniqueness: true, presence: true, on: :create

  validates :password, length: { minimum: 8}, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create
end
