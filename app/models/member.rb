class Member < ApplicationRecord
  has_many :beers
  validates :username, uniqueness: true

  has_secure_password
end
