class Event < ApplicationRecord
    belongs_to :user
    has_many :workouts
    has_many :appointments
    
    # scope method: validate scheduled times of workouts and appointments on the same date
        # 

end
