class BookingsController < ApplicationController
  
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking].permit(:booking_number, :issue, :client, :ad_size, :position, :status))

    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end 
  end

end
