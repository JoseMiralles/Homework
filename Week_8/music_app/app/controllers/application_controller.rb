class ApplicationController < ActionController::Base

    helper_method :current_user, :sign_in!, :sign_out!, :signed_in?

    def current_user
        @current_user = User.find_by(session_token: session[:session_token]) if @current_user == nil
    end

    def sign_in!(user)
        @current_user = user
        session[:session_token] = user.session_token
    end

    def sign_out!
        current_user.reset_session_token!
        session[:session_token] = nil
    end

    def signed_in?
        !!current_user
    end

end
