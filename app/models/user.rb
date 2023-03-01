class User < ActiveRecord::Base
  has_many :bookings
  has_many :apartments, through: :bookings
  has_many :reviews, class_name: "Review", foreign_key: "user_id"


  
  validates :firstname, :lastname, :username, :email, :password, presence: true
  validates :email, uniqueness: true
end
  