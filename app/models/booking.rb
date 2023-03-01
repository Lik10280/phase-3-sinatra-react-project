class Booking < ActiveRecord::Base
    belongs_to :user
    belongs_to :apartment

    validates :start_date, :end_date, :user_id, presence: true
    validates :payment_status, inclusion: { in: ['pending', 'paid'] }
   
  end
  