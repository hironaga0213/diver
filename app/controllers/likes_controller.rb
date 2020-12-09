class LikesController < ApplicationController
  before_action :topic_params
  
  def create
    @like = Like.create(user_id: current_user.id, topic_id: @topic.id)
    redirect_to controller: :topics, action: :index
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, topic_id: @topic.id).destroy
    redirect_to controller: :topics, action: :index
  end

  private
  def topic_params
    @topic = Topic.find(params[:topic_id])
  end
end
