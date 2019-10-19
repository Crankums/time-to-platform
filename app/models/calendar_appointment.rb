class CalendarAppointment < ApplicationRecord
    belongs_to :calendar
    belongs_to :appointment
    has_many :users, through: :calendar
end
