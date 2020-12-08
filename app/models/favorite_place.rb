class FavoritePlace < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '北海道'},
    {id: 3, name: '東北'},
    {id: 4, name: '湘南・三浦'},
    {id: 5, name: '伊豆半島'},
    {id: 6, name: '房総半島'},
    {id: 7, name: '伊豆諸島'},
    {id: 8, name: '北陸'},
    {id: 9, name: '紀伊半島'},
    {id: 10, name: '四国'},
    {id: 11, name: '山陰'},
    {id: 12, name: '九州'},
    {id: 13, name: '薩南諸島'},
    {id: 14, name: '沖縄'},
    {id: 15, name: 'その他・外国'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
