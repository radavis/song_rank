class CreateFiletypes < ActiveRecord::Migration
  def change
    create_table :filetypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
