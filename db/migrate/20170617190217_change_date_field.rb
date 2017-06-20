class ChangeDateField < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :date, :date
  end
end
