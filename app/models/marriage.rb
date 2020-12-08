class Marriage < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '未婚'},
    {id: 3, name: '既婚'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
