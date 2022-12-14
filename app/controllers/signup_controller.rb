class SignupController < ApplicationController
  def new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      # flash[:success] = "Welcome our website!"
      redirect_to login_path
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
