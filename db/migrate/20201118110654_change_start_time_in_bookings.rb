class ChangeStartTimeInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_time, "time USING start_time::time without time zone"
  end
end
