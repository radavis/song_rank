class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :number
      t.string :name, null: false
      t.integer :duration
      t.integer :album_id

      t.timestamps
    end
  end
end
