class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show]

  def index
    @topics = Topic.includes(:user).order("created_at DESC")
    @recommend = Topic.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.valid?
      @topic.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
  end

  # def edit
  # end

  def update
    @topic.update(topic_params)
    if @topic.save
      binding.pry
      redirect_to topic_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @topic.destroy
    redirect_to action: :index
  end

  def search
  end

  private
  def topic_params
    params.require(:topic).permit(:image, :title, :place, :impression).merge(user_id: current_user.id)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
