class Api::V1::UsersController < ApiController
    before_action :require_login, except: [:create]


    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        user = User.create!(user_params)
        render json: { token: user.auth_token }
    end

# Useless for now, but will have more value if/when we implement more advanced user profiles and customization
    def profile
        user = User.find_by!(auth_token: request.headers[:token])
        render json: { user: { username: user.username } }
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
        params.require(:user).permit(:username, :password_digest)
    end

    def find_user
        @user = User.find(params[:id])
    end
end