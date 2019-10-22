class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end
   
    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.build(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def edit
        @appointment = Appointment.find_by(id: params[:id])
    end

    def update
        @appointment = Appointment.find_by(id: params[:id])
        if @appointment.update(appointment_params)
            redirect_to appointment_path(@appointment)
        else
            render :edit
        end
    end

    def delete
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.delete
    end

    private

    def appointment_params
        params.require(:appointment).permit(
            :name,
            :start_time,
            :end_time,
            :location,
            :date,
            :day,
            :appt_type,
            :user_id
        )
    end

end
