class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class
      t.integer :tier
      t.boolean :alive
      t.integer :house_id

      t.timestamps
    end
  end
end
