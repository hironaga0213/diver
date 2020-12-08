class Career < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '未経験'},
    {id: 3, name: '体験ダイビングのみ'},
    {id: 4, name: '1~10本'},
    {id: 5, name: '10~50本'},
    {id: 6, name: '50~100本'},
    {id: 7, name: '100~200本'},
    {id: 8, name: '200本以上'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
