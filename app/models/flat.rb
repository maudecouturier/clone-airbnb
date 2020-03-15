class Flat < ApplicationRecord
   geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  belongs_to :owner
  has_many :bookings, dependent: :destroy #to be reviewed -status to cancel instead
  has_many :reviews, through: :bookings

  validates :title, :location, :travelers, presence: true
end
