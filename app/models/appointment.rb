class Appointment < ApplicationRecord
    includes Schedulable
    belongs_to :user
    belongs_to :events
    
    validates :location, format: { with: /\A[, a-zA-Z]+\z/ }
    validates :name, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :appt_type, format: { with: /\A[, a-zA-Z]+\z/ }, allow_blank: true
    
end
