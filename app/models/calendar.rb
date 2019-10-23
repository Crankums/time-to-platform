class Calendar < ApplicationRecord
    belongs_to :user
    belongs_to :workout
    belongs_to :appointment
    has_many :events

    # iterate over events
end
