class Appointment < ApplicationRecord
    has_one :user, through: :calendar

    validates :location, format: { with: /\A[, a-zA-Z]+\z/ }
    validates :name, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    # validates :type, allow_blank: true
    
end
