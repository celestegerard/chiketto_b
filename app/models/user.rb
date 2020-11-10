class User < ApplicationRecord

  has_one_attached :avatar

  belongs_to :parent

  validates :name, presence: true


end
