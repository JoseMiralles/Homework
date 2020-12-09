class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        p params
        @user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
            )
        if @user
            @user.reset_session_token!
            session[:session_token] = @user.session_token
            redirect_to user_url(@user.id)
        else
            render :new
        end
    end

    def destroy
        log_out_user!
        redirect_to new_session_url
    end

    private

    def session_params
        params.require(:user).permit(:username, :password, :session_token)
    end

end