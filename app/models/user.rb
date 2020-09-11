class User < ApplicationRecord

  has_many :comments, dependent: :destroy
  has_one_attached :avatar
  validates :name, presence: true


end
