class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new
    @user.name                  = params[:user][:name]
    @user.phone_number          = params[:user][:phone_number]
    @user.email                 = params[:user][:email]
    @user.password              = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

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
end
