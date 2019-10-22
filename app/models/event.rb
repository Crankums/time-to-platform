class Event < ApplicationRecord
    belongs_to :user
    belongs_to :workouts
    belongs_to :appointments
    

end
