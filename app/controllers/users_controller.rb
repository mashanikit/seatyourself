class UsersController < ApplicationController
  def index
    @Users = User.all
  end

  def show
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)

    if @user.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account successfully created!'
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :phone_number, :email, :password, :password_confirmation)

  end
end
