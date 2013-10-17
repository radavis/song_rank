class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :points
      t.integer :track_id

      t.timestamps
    end
  end
end
