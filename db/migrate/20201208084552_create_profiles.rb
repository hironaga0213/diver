class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer     :license_id,         foreign_key: true
      t.integer     :career_id,          foreign_key: true
      t.integer     :prefecture_id,      foreign_key: true
      t.integer     :holiday_id,         foreign_key: true
      t.integer     :marriage_id,        foreign_key: true
      t.integer     :favorite_diving_id, foreign_key: true
      t.integer     :favorite_fish_id,   foreign_key: true
      t.integer     :favorite_place_id,  foreign_key: true
      t.integer     :favorite_sea_id,    foreign_key: true
      t.text        :introduction
      t.references  :user,               foreign_key: true
      t.timestamps
    end
  end
end
