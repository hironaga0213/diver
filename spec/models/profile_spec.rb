require 'rails_helper'

RSpec.describe Profile, type: :model do
  before do
    @profile = FactoryBot.build(:profile)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "プロフィールが全て選択されていれば登録できる" do
        expect(@profile).to be_valid
      end

      it "お住まいが選択されていなくても登録できる" do
        @profile.prefecture_id = 1
        expect(@profile).to be_valid
      end

      it "ライセンスが選択されていなくても登録できる" do
        @profile.license_id = 1
        expect(@profile).to be_valid
      end

      it "経験本数が選択されていなくても登録できる" do
        @profile.career_id = 1
        expect(@profile).to be_valid
      end

      it "休日が選択されていなくても登録できる" do
        @profile.holiday_id = 1
        expect(@profile).to be_valid
      end

      it "結婚が選択されていなくても登録できる" do
        @profile.marriage_id = 1
        expect(@profile).to be_valid
      end

      it "ビーチorボートが選択されていなくても登録できる" do
        @profile.favorite_diving_id = 1
        expect(@profile).to be_valid
      end

      it "お好きな魚が選択されていなくても登録できる" do
        @profile.favorite_fish_id = 1
        expect(@profile).to be_valid
      end

      it "好きなスポットが選択されていなくても登録できる" do
        @profile.favorite_place_id = 1
        expect(@profile).to be_valid
      end

      it "好きな海が選択されていなくても登録できる" do
        @profile.favorite_sea_id = 1
        expect(@profile).to be_valid
      end

      it "自己紹介が選択されていなくても登録できる" do
        @profile.introduction = 1
        expect(@profile).to be_valid
      end
    end
  end
end
