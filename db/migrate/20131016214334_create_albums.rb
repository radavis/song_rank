class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.date :release_date
      t.string :image
      t.string :artist_id

      t.timestamps
    end
  end
end
