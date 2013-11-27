class BookingsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking].permit(:booking_number, :issue_id, :client_id, :ad_size, :position, :status))

    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end 
  end

  def show
    # @booking = Booking.find(params[:id])
  end

end
