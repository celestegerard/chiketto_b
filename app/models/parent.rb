class Parent < ApplicationRecord

  has_one_attached :avatar

  has_many :users
  has_many :prizes

  validates :name, presence: true

end
