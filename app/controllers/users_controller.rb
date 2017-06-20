class UsersController < ApplicationController

  before_action :find_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(session[:user_id])
  end

  def showr
    @user = User.find(session[:user_id])
    @restaurant = @user.owned_restaurants
    render :own_restaurants
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)

    if @user.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account successfully created!'
      session[:user_id] = @user.id
      redirect_to root_url
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def edit
    unless @user
      flash[:error] = "Must be logged in"
      redirect_to root_url and return
    end
  end

  def update
    unless @user
      flash[:error] = "Must be logged in"
      redirect_to root_url and return
    end

    @user.assign_attributes(user_params)

    if @user.save
      # default behaviour of flash works on a redirect
      flash[:notice] = 'Account successfully updated!'
      redirect_to edit_users_path
    else
      # flash.now works on the same request
      flash.now[:error] = 'Sorry, try again!'
      render :edit
    end
  end

  def destroy
  end
  def find_user
    @user = current_user
  end
  def user_params
    params.require(:user).permit(:name, :phone_number, :email, :password, :password_confirmation)

  end

end
