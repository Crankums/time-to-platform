class Workout < ApplicationRecord
    has_one :user, through: :calendar

    validates :name, presence: true
    validates :length, presence: true #time validator, applicationRecord can kick an invaliad scheduling back out
    validates :type, presence: true
end
