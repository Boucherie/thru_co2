
class Team < ApplicationRecord
  has_many :users
  has_many :scores, through: :users

  validates :name, uniqueness: true, presence: true, on: :create
end
