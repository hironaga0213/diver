class FavoriteDiving < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'ビーチ派'},
    {id: 3, name: 'ボート派'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
