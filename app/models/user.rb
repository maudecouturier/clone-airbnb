class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # TO BE REVIEWED => DEPENDENT DESTROY SHOULD BE REPLACED BY BOOKING STATUS AS CANCELLED
  has_many :flats, foreign_key: 'user_id', dependent: :destroy
  has_many :bookings, foreign_key: 'renter_id', dependent: :destroy
  has_many :reviews, foreign_key: 'renter_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
