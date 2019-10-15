class UsersController < ApplicationController
    def show
        @user = User.find_by(id: params[:id])
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.build(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        @user = User.find_by(id: params[:id])
    end

    def update
        @user = User.find_by(id: find_by[:id])
        if @user.update
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private

    def user_params
    end
    
end
