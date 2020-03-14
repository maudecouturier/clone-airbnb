class Review < ApplicationRecord
  RATINGS = (0..5).to_a

  belongs_to :renter
  belongs_to :booking

  validates :content, :rating, presence: true
  validates :rating, :inclusion=> { :in => RATINGS }
end
