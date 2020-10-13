class Prize < ApplicationRecord

  has_one_attached :prizeimage
  validates :title, presence: true

end
