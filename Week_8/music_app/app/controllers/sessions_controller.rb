class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.find_by_credentials(
      session[:user][:email],
      session[:user][:password]
    )
    if user
      sign_in!(user)
      redirect_to user_url(user.id)
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_session_url
    end
  end

  def destroy
    sign_out!
    redirect_to new_user_url
  end

end