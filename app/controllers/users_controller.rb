class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
  end

  def create 
    @user = User.new user_params 
    if @user.save
      redirect_to root_path # TODO: send the user to a better page
    else 
      render :new 
    end
  end 

  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
