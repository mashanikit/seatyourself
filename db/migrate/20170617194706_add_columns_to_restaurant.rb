class AddColumnsToRestaurant < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.string :price_range
      t.text :description
      t.string :menu 
    end
  end
end
