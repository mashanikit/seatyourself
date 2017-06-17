class ChangeReservations < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :time, :integer
  end
end
