class AddDefaultToAcceptedInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :accepted, false
  end
end
