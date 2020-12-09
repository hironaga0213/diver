class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :license
  belongs_to :career
  belongs_to :holiday
  belongs_to :marriage
  belongs_to :favorite_diving
  belongs_to :favorite_fish
  belongs_to :favorite_place
  belongs_to :favorite_sea
  belongs_to :user, optional: true
end
