class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    def log_in_user!(user)
        user.reset_session_token!
        session[:session_token] = user.session_token
    end

    def log_out_user!
        current_user.reset_session_token!
        session[:session_token] = nil
    end

    def logged_in?
        return true if current_user != nil
        false
    end

    def current_user
        return nil if session[:session_token] == nil
        @user = User.find_by(session_token: session[:session_token]) if @user == nil
        return @user
    end

end
