class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_name(params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            @user = user
            redirect_to '/profile'
        else
            flash[:error] = "Invalid name or password, please try again or click below to sign up"
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to :new
    end

    private

    def session_params
        params.permit(:user).permit(
            :name, 
            :email, 
            :password
        )
        end
    end

    
end
