class Workout < ApplicationRecord

    has_one :user, through: :calendar
end
