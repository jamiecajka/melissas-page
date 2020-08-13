class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :profile_picture,
      :encrypted_password
    )
  end

end
