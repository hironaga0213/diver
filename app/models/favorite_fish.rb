class FavoriteFish < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'クマノミ'},
    {id: 3, name: 'エビ・カニ'},
    {id: 4, name: 'タコ・イカ'},
    {id: 5, name: 'サンゴ・イソギンチャク'},
    {id: 6, name: 'クリオネ'},
    {id: 7, name: 'カメ'},
    {id: 8, name: 'イルカ'},
    {id: 9, name: 'サメ'},
    {id: 10, name: 'シャチ'},
    {id: 11, name: 'クジラ'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end

