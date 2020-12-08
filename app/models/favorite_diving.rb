class FavoriteDiving < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'ビーチダイビング'},
    {id: 3, name: 'ボートダイビング'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
