class Appointment < ApplicationRecord
    has_one :user, through: :calendar
end
