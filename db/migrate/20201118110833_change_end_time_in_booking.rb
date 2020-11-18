class ChangeEndTimeInBooking < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :end_time, "time USING end_time::time without time zone"
  end
end
