class User < ApplicationRecord

  has_many :comments
  has_one_attached :avatar
  validates :name, presence: true


end
