class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    if @profile.save
      redirect_to user_path
    else
      render :edit
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:license_id, :career_id, :prefecture_id, :holiday_id, :marriage_id, :favorite_diving_id, :favorite_fish_id, :favorite_place_id, :favorite_sea_id, :introduction).merge(user_id: current_user.id)
  end
end
