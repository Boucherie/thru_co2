class User < ApplicationRecord
  has_secure_password

  belongs_to :team , optional: true
  has_many :scores

  validates :email, uniqueness: true, presence: true, uniqueness: true, on: :create

  validates_length_of :password, :in => 8..20, on: :create
  # validates :password, length: { minimum: 8}, on: :create
  validates :password, confirmation: true, on: :create
  validates :password_confirmation, presence: true, on: :create
end
