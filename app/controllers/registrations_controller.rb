class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    @message = "Welcome to DiveTracker!"
    redirect_to user_path(@user, message: @message)
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :gender, :age, :team_id)
    end

end