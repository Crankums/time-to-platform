class Calendar < ApplicationRecord
    belongs_to :user
    belongs_to :workout
    belongs_to :appointment
    
end
