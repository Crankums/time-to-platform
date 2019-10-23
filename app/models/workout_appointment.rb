class WorkoutAppointment < ApplicationRecord
    belongs_to :workout
    belongs_to :appointment
    
    
end
