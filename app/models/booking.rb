class Booking < ApplicationRecord
  belongs_to :renter
  belongs_to :flat
  has_one :review, dependent: :destroy

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  # TO DO: SWITCH TO ENUM
  validates :status, inclusion: { in: %w(approved pending denied cancelled),
    message: "Not a valid status" }

  scope :pending, -> { where status: 'pending'}
  scope :approved, -> { where status: 'approved'}
  scope :denied, -> { where status: 'denied'}
  scope :cancelled, -> { where status: 'cancelled'}

  private

  def end_date_after_start_date
    # to do
  end
end
