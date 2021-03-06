class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params)
        if @event.save
            redirect_to event_path(@event)
        else
            render :new
        end
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
            redirect_to event_path(@event)
        else
            render :edit
        end
    end

    def delete
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to root_path
    end

    private

    def event_params
        params.require(:event).permit(:user_id, :workout_id, :appointment_id, :event_date)
    end

end
