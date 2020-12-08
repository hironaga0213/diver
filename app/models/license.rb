class License < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '未取得'},
    {id: 3, name: 'OWD'},
    {id: 4, name: 'AOW'},
    {id: 5, name: 'RED'},
    {id: 6, name: 'MSD'},
    {id: 7, name: 'OWSI'},
    {id: 7, name: 'インストラクター(実務経験あり)'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
