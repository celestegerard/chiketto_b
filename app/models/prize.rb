class Prize < ApplicationRecord

  has_one_attached :prizeimage

  belongs_to :parent

  validates :title, presence: true

end
