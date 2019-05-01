class ChangeClassToRole < ActiveRecord::Migration[5.2]
  def change
  	rename_column :characters, :class, :role
  end
end
