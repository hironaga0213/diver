require 'rails_helper'

RSpec.describe Topic, type: :model do
  before do
    @topic = FactoryBot.build(:topic)
  end

  describe 'トピックの保存' do
    context "トピックが保存できる場合" do
      it "画像、タイトル、場所、感想があればトピックは保存される" do
        expect(@topic).to be_valid
      end
    end
    context "トピックが保存できない場合" do
      it "タイトルがないとトピックは保存できない" do
        @topic.title = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Title can't be blank")
      end
      it "画像がないとトピックは保存できない" do
        @topic.image = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Image can't be blank")
      end
      it "場所がないとトピックは保存できない" do
        @topic.place = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Place can't be blank")
      end
      it "感想がないとトピックは保存できない" do
        @topic.impression = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("Impression can't be blank")
      end
      it "ユーザーが紐付いていないとトピックは保存できない" do
        @topic.user = nil
        @topic.valid?
        expect(@topic.errors.full_messages).to include("User must exist")
      end
    end
  end
end
