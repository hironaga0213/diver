class Holiday < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '土日休み'},
    {id: 3, name: '平日休み'},
    {id: 4, name: '不定休'}
  ]
  include ActiveHash::Associations
  has_many :profiles
end
