class Workout < ApplicationRecord
    has_many :users
    has_many :users, through: :events
    has_many :events

    # validates :name, presence: true
    # validates :duration, presence: true #time validator, applicationRecord can kick an invalid scheduling back out
    # validates :workout_type, presence: true
    
    def reminder_pop
        # when Time.now = workout.starts_at - 15.minutes
            # "Workout starts in fifteen. Time to get ready!"
        # when Time.now = workout.starts_at
            # "It's time to workout"
        # when workout.duration == 50%
            # "50% time left. It's time to head back"
        # when workout.duration == 100%
            # "All done" -- pop-up upload to Strava?
    end

end
