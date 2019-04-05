class Listing < ApplicationRecord
  mount_uploader :image, PhotoUploader

  acts_as_taggable_on :tags

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :price, presence: true
  validates :image, presence: true
  validates :detail, presence: true
  validates :brand, presence: true
  validates :size, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # include PgSearch
  # pg_search_scope :search_by_brand_and_detail,
  #   against: [ :brand, :detail ],
  #   using: { tsearch: { prefix: true } }
end
