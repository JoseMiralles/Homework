class UsersController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            self.log_in_user!(@user)
            redirect_to user_url(@user.id)
        else
            render :new
        end
    end

    def show
        if current_user.nil?
            redirect_to new_session_url
            return
        end
        @user = current_user
        render :show
    end

    def index
        @users = User.all
        render :index
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :session_token)
    end

end