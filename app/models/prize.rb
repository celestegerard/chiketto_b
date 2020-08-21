class Prize < ApplicationRecord

  has_many :comments, dependent: :destroy
  has_one_attached :prizeimage
  validates :title, presence: true

end
