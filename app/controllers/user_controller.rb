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

    if user_params[:password].length < 8
      flash[:danger] = "password needs to be 8 charaters or longer"
      redirect_to user_new_path
    else
      flash[:success] = "User account created! wew!"
      redirect_to root_path
    end

    
  end

  def destroy
  end

  def show
    parameters = { term: 'bars'}
    @results = Yelp.client.search('Seattle', parameters)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :username)
  end

end
