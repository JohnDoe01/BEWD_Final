class Issue < ActiveRecord::Base

  has_many :bookings 

  def getStatus
    if (self.bookings.count == 0)
      status = "NO BOOKINGS"
    else
      status = "APPROVED TO PRINT"
    end
  
    self.bookings.each do |b|
      if b.status != "APPROVED"
        status = "PENDING"
      end
    end
    return status
  end

end
