class ChangingOpensCloses < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :opens, :time
    change_column :restaurants, :closes, :time 

  end
end
