class User < ApplicationRecord
    has_one :calendar
    has_many :appointments
    has_many :workouts
    has_many :appointments, through: :calendar
    has_many :workouts, through: :calendar
    has_secure_password

    # validates :name, length: {minimum: 2}, presence: true, uniqueness: true
    # validates :age, numericality: {only_integer: true}, allow_blank: true
    # validates :password, length: { in: 6..15 }, confirmation: true
    # validates :password_confirmation, presence: true
    # validates :bio, length: { maximum: 250 }, allow_blank: true
    # validates :favorite_activity, allow_blank: true

    
end
