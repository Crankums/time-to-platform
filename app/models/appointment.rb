class Appointment < ApplicationRecord
    has_one :user, through: :calendar

    validates :location, format: { with: /\A[, a-zA-Z]+\z/ }
    validates :name, presence: true
    validates :starts_at, presence: true
    validates :ends_at, presence: true
    validates :type, allow_blank: true
    
end
