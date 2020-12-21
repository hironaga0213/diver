require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    @user = FactoryBot.build(:user)
    @profile = FactoryBot.build(:profile)
  end
  context 'ユーザー新規登録ができるとき' do 
    it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('新規登録')
      # 新規登録ページへ移動する
      visit new_user_registration_path
      # ユーザー情報を入力する
      fill_in 'ニックネーム', with: @user.nickname
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      fill_in 'パスワード(確認)', with: @user.password_confirmation
      select '1930',from: 'user[birth(1i)]'
      select '7', from: 'user[birth(2i)]'
      select '7', from: 'user[birth(3i)]'
      # プロフィールの登録へボタンを押してプロフィール入力画面へ遷移する
      find('input[name="commit"]').click
      # プロフィール情報を入力する
      select 'OWD', from: 'profile[license_id]'
      select '1~10本', from: 'profile[career_id]'
      select '北海道', from: 'profile[prefecture_id]'
      select '土日休み', from: 'profile[holiday_id]'
      select '未婚', from: 'profile[marriage_id]'
      select 'ビーチ派', from: 'profile[favorite_diving_id]'
      select 'クマノミ', from: 'profile[favorite_fish_id]'
      select '伊豆諸島', from: 'profile[favorite_place_id]'
      select '透き通ったきれいな海', from: 'profile[favorite_sea_id]'
      fill_in '自己紹介文', with: @profile.introduction
      # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { User.count }.by(1)
      # トップページへ遷移する
      expect(current_path).to eq root_path
      # カーソルを合わせるとログアウトボタンが表示されることを確認する
      expect(
        find(".user-page").hover
      ).to have_content('ログアウト')
      # サインアップページへ遷移するボタンや、ログインページへ遷移するボタンが表示されていないことを確認する
      expect(page).to have_no_content('新規登録')
      expect(page).to have_no_content('ログイン')
    end
  end
  # context 'ユーザー新規登録ができないとき' do
  #   it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
  #     # トップページに移動する
  #     # トップページにサインアップページへ遷移するボタンがあることを確認する
  #     # 新規登録ページへ移動する
  #     # ユーザー情報を入力する
  #     # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
  #     # 新規登録ページへ戻されることを確認する
  #   end
  # end
end
