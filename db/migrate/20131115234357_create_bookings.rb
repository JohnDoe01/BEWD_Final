class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :booking_number
      t.references :issue, index: true
      t.references :client, index: true
      t.string :ad_size
      t.string :position
      t.string :status

      t.timestamps
    end
  end
end
