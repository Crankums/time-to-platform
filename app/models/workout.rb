class Workout < ApplicationRecord
    belongs_to :user
    belongs_to :events

    validates :name, presence: true
    validates :duration, presence: true #time validator, applicationRecord can kick an invalid scheduling back out
    validates :workout_type, presence: true
    
    

end
