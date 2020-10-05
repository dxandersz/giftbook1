class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
         if @user.save
            render json: @user
        else
            render error: { error: 'Unable to create user.' }, status: 400
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to :action => 'show', :id => @user
        else
            render json: { error: 'Unable to update user.' }, status: 400
        end
    end



    def destroy
        User.find(params[:id]).destroy
        redirect_to :action => 'index'
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, city_ids: [])
    end

    def find_user
        @user = User.find(params[:id])
    end
end