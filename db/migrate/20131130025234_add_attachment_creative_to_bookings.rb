class AddAttachmentCreativeToBookings < ActiveRecord::Migration
  def self.up
     add_attachment :bookings, :creative
    end
  end

  def self.down
    remove_attachment :bookings, :creative
  end
end
