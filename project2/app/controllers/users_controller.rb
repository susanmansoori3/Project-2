class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	user = User.new(params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation))
  	if user.save
  		# Interest of time
  		redirect_to new_sessions_path
  	end
  end
  def show
  end

  def edit
  end
end
