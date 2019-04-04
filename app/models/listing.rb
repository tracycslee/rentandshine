class Listing < ApplicationRecord
  mount_uploaders :images, PhotoUploader
  serialize :images

  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :price, presence: true
  validates :images, presence: true
  validates :detail, presence: true
  validates :brand, presence: true
  validates :size, presence: true

  # include PgSearch
  # pg_search_scope :search_by_brand_and_detail,
  #   against: [ :brand, :detail ],
  #   using: { tsearch: { prefix: true } }

end
