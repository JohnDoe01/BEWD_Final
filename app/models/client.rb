class Client < ActiveRecord::Base
  
  has_many :bookings
  validates :advertiser, :name, :email, presence: true 
  validates_format_of :phone, :with => /\A[\d\+\ \(\)]+\Z/
  validates_format_of :email, :with => /\A.+@.+\..+\Z/

end

