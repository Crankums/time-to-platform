class Workout < ApplicationRecord
    has_many :users
    has_many :users, through: :events
    has_many :events

    validates :name, presence: true
    validates :duration, presence: true #time validator, applicationRecord can kick an invalid scheduling back out
    validates :workout_type, presence: true
    
    

end
