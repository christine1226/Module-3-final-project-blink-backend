class Player < ApplicationRecord
  has_many :games

  VALID_USERNAME_REGEX = /[a-z0-9]/
  validates :username, presence: true, length: (2..10), format: { with: VALID_USERNAME_REGEX }

end
