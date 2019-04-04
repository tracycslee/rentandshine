class ProfilesController < ApplicationController

  def show
    @profile = current_user
  end

  #   def edit
  #     @profile = current_user
  #     authorize @profile
  #   end

  #   def update
  #     @profile = current_user
  #     authorize @profile
  #     @profile.update(user_params)
  #     redirect_to users_profile_path
  #   end

  #   private
  #   def user_params
  #     params.require(:profile).permit(:first_name, :last_name, :email, :address)
  #   end
end
