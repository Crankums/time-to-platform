class Appointment < ApplicationRecord
    has_one :user
    has_one :user, through: :events
    has_many :events
    
    validates :location, format: { with: /\A[, a-zA-Z]+\z/ }
    validates :name, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :appt_type, allow_blank: true
    
end
