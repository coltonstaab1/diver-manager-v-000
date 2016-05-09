class UsersController < ApplicationController

  def show
    @message = params[:message]
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit

  end

end