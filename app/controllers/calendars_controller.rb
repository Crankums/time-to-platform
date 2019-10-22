class CalendarsController < ApplicationController
    def index
        @appoints = Appointments.all
        @workouts= Workout.all
    end

    def new
        @calendar = Calendar.new
    end

    def create
        @calendar = Calendar.create(calendar_params)
    end

    def show
        @calendar = Calendar.find_by(id: params[:id])
    end

    def edit
        @calendar = Calendar.find_by(id: params[:id])
    end

    def update
        @calendar = Calendar.find_by(id: params[:id])
        @calendar.update(calendar_params)
        # is there a DRY update validation method I could create, given that I have about 4 edit pages?
    end

    private

    def calendar_params
        params.require(:calendar).permit(:user_id, :workout_id, :appointment_id)
    end
    
end
