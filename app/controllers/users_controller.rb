class UsersController < ApplicationController

  def show
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :password, :email)
  end
end
