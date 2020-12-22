require 'rails_helper'

RSpec.describe "Topics", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @topic = FactoryBot.build(:topic)
  end
  context 'トピック投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # トピックページへ移動する
      visit topics_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページに移動する
      visit new_topic_path
      # フォームに情報を入力する
      fill_in 'タイトル', with: @topic.title
      fill_in '場所', with: @topic.place
      fill_in '感想', with: @topic.impression
      image_path = Rails.root.join('public/images/test_image.jpeg')
      attach_file('topic[image]', image_path, make_visible: true)
      # 送信するとtopicモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Topic.count }.by(1)
      # 投稿完了ページに遷移することを確認する
      expect(current_path).to eq topics_path
      # トップページには先ほど投稿した内容のトピックが存在することを確認する（画像）
      expect(page).to have_selector "img"
      expect(page).to have_content(@topic.title)
      expect(page).to have_content(@topic.place)
      expect(page).to have_content(@topic.impression)
    end
  end
  context 'トピック投稿ができないとき'do
    it '記入した情報に空欄があると投稿できない' do
      # ログインする
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # トピックページへ移動する
      visit topics_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページに移動する
      visit new_topic_path
      # 何も入力せずに送信ボタンを押す。
      find('input[name="commit"]').click
      # 新規投稿ページに戻ってくることを確認する
      expect(current_path).to eq "/topics"
    end
  end
end
