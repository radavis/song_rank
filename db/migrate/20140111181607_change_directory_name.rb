class ChangeDirectoryName < ActiveRecord::Migration
  def change
    rename_column :directories, :name, :full_path
  end
end
