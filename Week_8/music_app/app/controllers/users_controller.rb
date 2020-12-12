class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    if signed_in?
      @user = User.find_by(id: session[:id])
      render :show
    else
      redirect_to new_session_url
    end
  end

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    if user.save
      sign_in!(user)
      redirect_to user_url(user.id)
    else
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_url
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
