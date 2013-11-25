class Booking < ActiveRecord::Base

  belongs_to :issue
  belongs_to :client
  
end
