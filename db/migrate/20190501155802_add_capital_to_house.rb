class AddCapitalToHouse < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :capital, :string
  end
end
