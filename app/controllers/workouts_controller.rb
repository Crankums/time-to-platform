class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all
    end
    
    def new
        @workout = Workout.new(start_time: DateTime.now, end_time: DateTime.now+30.minute)
    end

    def create
        @workout = Workout.create(workout_params)
        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
    end

    def edit
        @workout = Workout.find_by(id: params[:id])
    end

    def update
        @workout = Workout.find_by(id: params[:id])
        if @workout.update(workout_params)
            redirect_to workout_path(@workout)
        else
            render :edit
        end
    end

    def delete
        @workout = Workout.find_by(id: params[:id])
    end

    private
    
    def workout_params
        params.require(:workout).permit(
            :name,
            :workout_type,
            :duration,
            :start_time,
            :end_time,
            :user_id
        )
    end

end
