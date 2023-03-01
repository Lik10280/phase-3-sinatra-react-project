class User < ActiveRecord::Base
    has_many :bookings
    has_many :apartments, through: :bookings
  
  validates :firstname, :lastname, :username, :email, :password, presence: true
  validates :email, uniqueness: true
  end
  