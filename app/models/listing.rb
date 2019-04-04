class Listing < ApplicationRecord
  mount_uploaders :images, PhotoUploader
  serialize :images

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :price, presence: true
  validates :images, presence: true
  validates :detail, presence: true
  validates :brand, presence: true
  validates :size, presence: true
end
