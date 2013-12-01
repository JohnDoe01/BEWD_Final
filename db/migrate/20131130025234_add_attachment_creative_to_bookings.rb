class AddAttachmentCreativeToBookings < ActiveRecord::Migration
  def self.up
    change_table :bookings do |t|
      t.attachment :creative
    end
  end

  def self.down
    drop_attached_file :bookings, :creative
  end
end
