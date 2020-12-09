class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string      :title
      t.string      :place
      t.text        :impression
      t.references  :user,          foreign_key: true
      t.timestamps
    end
  end
end
