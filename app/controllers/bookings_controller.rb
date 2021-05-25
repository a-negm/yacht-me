class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def index
    @user = current_user
    @bookings = Booking.where(user: current_user.id)
  end

  def new
    @booking = Booking.new
    @yacht = Yacht.find(params[:yacht_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @yacht = Yacht.find(params[:yacht_id])
    @booking.yacht = @yacht
    @booking.user = current_user
    if @booking.save
      redirect_to yacht_booking_successful_path
    else
      render :new
    end
  end

  def successful
  end

  def booking_params
    params.require(:booking).permit(:check_out_date, :check_in_date)
  end
end
