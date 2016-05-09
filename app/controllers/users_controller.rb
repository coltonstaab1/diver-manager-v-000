class UsersController < ApplicationController

  def show
    @message = params[:message]
    @user = User.find(params[:id])
  end

  def index
  end


end