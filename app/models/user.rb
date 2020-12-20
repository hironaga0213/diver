class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :birth
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers', on: :create

  has_one  :profile
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  has_many :likes, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :liked_topics, through: :likes, source: :topic
end
