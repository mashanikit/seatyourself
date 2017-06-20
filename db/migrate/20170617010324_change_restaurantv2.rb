class ChangeRestaurantv2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :user_id
  end
end
