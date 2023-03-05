class Rental < ActiveRecord::Base
    belongs_to :owner
    has_many :reviews
end