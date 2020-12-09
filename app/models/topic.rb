class Topic < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :title, :place, :impression, :image
  end

  def already_liked?(user)
    likes.where(user_id: user.id).exists?
  end
end
