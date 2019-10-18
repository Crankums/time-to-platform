class User < ApplicationRecord
    has_one :calendar
    has_many :appointments, through: :calendar
    has_many :workouts, through: :calendar
    has_secure_password

    
end
