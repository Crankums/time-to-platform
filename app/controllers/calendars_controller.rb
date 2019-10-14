class CalendarsController < ApplicationController
    def index
        @appoints = Appointments.all
        @workouts= Workout.all
    end

    def new
    end

    def show
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def calendar_params
    end
    
end
