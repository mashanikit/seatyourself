class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :name
      t.string :neighbourhood
      t.string :address
      t.string :cuisine_type

      t.timestamps
    end
  end
end
