class User < ActiveRecord::Base
    has_many :bookings
    has_many :rentals, through: :bookings
    has_many :reviews, class_name: "Review", foreign_key: "user_id"
    has_secure_password
  
  
    
    validates :firstname, :lastname, :username, :email, :password, presence: true
    
  end