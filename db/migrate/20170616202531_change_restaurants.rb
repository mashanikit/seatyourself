class ChangeRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :image, :string, :default => "http://static.boredpanda.com/blog/wp-content/uuuploads/cute-baby-animals/cute-baby-animals-2.jpg"
  end
end
