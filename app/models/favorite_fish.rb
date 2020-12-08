class FavoriteFish < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: 'クマノミみたいなカワイイ魚'},
    {id: 3, name: 'エビ・カニみたいな甲殻類'},
    {id: 4, name: 'タコ・イカみたいな軟体動物'},
    {id: 5, name: 'サンゴ・イソギンチャクみたいな刺胞動物'},
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

