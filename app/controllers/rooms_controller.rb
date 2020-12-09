class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = Room.includes(:user)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to action: :index
  end
  
  private
  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
