class Mom < ApplicationRecord

  has_one_attached :imageUrl

  has_many :users
  has_many :prizes

  validates :googleId, presence: true

end
