class ChangeUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password_digest, :string
    add_column :users, :loyalty_points, :integer, :default => 0
    add_column :restaurants, :opens, :integer
    add_column :restaurants, :closes, :integer
    add_column :restaurants, :capacity, :integer
  end
end
