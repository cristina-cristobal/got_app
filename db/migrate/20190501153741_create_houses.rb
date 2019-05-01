class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :region
      t.string :sigil
      t.string :house_words

      t.timestamps
    end
  end
end
