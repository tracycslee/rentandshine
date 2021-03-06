class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    @user.update(user_params)
    redirect_to users_profile_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address)
  end
end
