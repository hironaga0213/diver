class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit]
  before_action :search_user, only: [:index, :search]
  

  def index
    @users = User.all
    @profiles = Profile.all
    recommend_user
  end

  def show
    @profile = @user.profile
    # @topics = @user.topics
  end

  # def edit
  #   @profile = @user.profile
  # end

  def search
    @results = @p.result
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def search_user
    @p = Profile.ransack(params[:q])
  end

  def recommend_user
    all_user = Profile.where.not(user_id: current_user.id)
    i = Profile.find_by(user_id: current_user.id)

    @recommend = []
    all_user.each do |someone|
      count = 0
      if someone.license_id == i.license_id && someone.license_id != 1
        count += 1
      end
      if someone.prefecture_id == i.prefecture_id && someone.prefecture_id != 1
        count += 1
      end
      if someone.career_id == i.career_id && someone.career_id != 1
        count += 1
      end
      if someone.holiday_id == i.holiday_id && someone.holiday_id != 1
        count += 1
      end
      if someone.marriage_id == i.marriage_id && someone.marriage_id != 1
        count += 1
      end
      if someone.favorite_diving_id == i.favorite_diving_id && someone.favorite_diving_id != 1
        count += 1
      end
      if someone.favorite_fish_id == i.favorite_fish_id && someone.favorite_fish_id != 1
        count += 1
      end
      if someone.favorite_place_id == i.favorite_place_id && someone.favorite_place_id != 1
        count += 1
      end
      if someone.favorite_sea_id == i.favorite_sea_id && someone.favorite_sea_id != 1
        count += 1
      end
      if count >= 4
        @recommend.push(someone)
      end
    end 
  end
  # # def set_profile_column
  #   # @profile_lincense_id = Profile.select("license_id").distinct  # 重複なくnameカラムのデータを取り出す
  # # end
end
