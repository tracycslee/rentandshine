class Listing < ApplicationRecord
  mount_uploader :image, PhotoUploader

  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :price, presence: true
  validates :image, presence: true
  validates :detail, presence: true
  validates :brand, presence: true
  validates :size, presence: true
end
