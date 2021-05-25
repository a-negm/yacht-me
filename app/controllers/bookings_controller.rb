class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = params[:user_id]
    @booking.yacht = params[:yacht_id]
    if @booking.save
      redirect_to booking_successful_path
    else
      render :new
    end
  end


  def booking_params
    params.require(:booking).permit(:check_out_date, :check_in_date)
end
