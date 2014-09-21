class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      # saving greting message in flash for future representation
      flash[:success] = "Welcome to the Sample App!"
      # redirect to user profile page
      redirect_to @user
    else
      render 'new'
    end
  end
end
