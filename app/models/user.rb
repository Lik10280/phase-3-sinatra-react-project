class User < ActiveRecord::Base
    has_many :bookings
    has_many :apartments, through: :bookings
  
    
  end
  