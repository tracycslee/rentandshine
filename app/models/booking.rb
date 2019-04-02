class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :reviews

  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :total_price, presence: true
end
