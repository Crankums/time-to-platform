class CalendarWorkout < ApplicationRecord
    belongs_to :calendar
    belongs_to :workout
    has_many :users, through: :calendar
end
