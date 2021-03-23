class Game < ApplicationRecord
  belongs_to :user
  validates :name, :user, presence: true
  has_many :bats
end
