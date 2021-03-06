class Booking < ActiveRecord::Base

  belongs_to :issue
  belongs_to :client
  validates :ad_size, :position, :status, presence: true 
  validates :booking_number, numericality: { only_integer: true }, length: { maximum: 6 }, uniqueness: true
  validate :issue_validate, :client_validate
  has_attached_file :creative, :content_type => "application/pdf", :message => "Only PDF's are allowed"
  validates_attachment_content_type :creative, :content_type => "application/pdf", :message => "Only PDF's are allowed"

  def issue_validate
    return false if Issue.find(self.issue_id).nil?
  end

  def client_validate
    return false if Client.find(self.client_id).nil?
  end
  
end


