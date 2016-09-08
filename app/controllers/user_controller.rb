class UserController < ApplicationController
  def new

  end

  def create
    #make new user
    User.find_or_create_by(email: user_params[:email]) do |user|
      user.password = user_params[:password]
      user.username = user_params[:username]
      session[:user_id] = user_params[:user_id]
    end

    redirect_to root_path
  end

  def destroy
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username)
  end

end
