class FavoriteSea < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '透き通ったきれいな海'},
    {id: 3, name: 'きれいな魚がいっぱい泳いでいる海'},
    {id: 4, name: '魚に直接触れる海'},
    {id: 5, name: '沈没船が見れる海'},
    {id: 6, name: '洞窟を探検できる海'},
    {id: 7, name: '危険生物がいる冒険的な海'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
