class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.date :released
      t.string :image
      t.integer :artist_id

      t.timestamps
    end
  end
end
