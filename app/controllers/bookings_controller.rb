class BookingsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @bookings = Booking.all
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
    @booking = Booking.find(params[:id])
  end

 def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(params[:booking].permit(:booking_number, :issue_id, :client_id, :ad_size, :position, :status))
      redirect_to @booking
      else
        render 'edit'
    end
  end

  def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
 
  redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:booking_number, :issue_id, :client_id, :ad_size, :position, :status)
  end

end
