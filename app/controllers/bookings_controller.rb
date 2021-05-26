class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def index
    @user = current_user
    @bookings = policy_scope(Booking.where(user: current_user.id))
    authorize @bookings
  end

  def new
    @booking = Booking.new
    @yacht = Yacht.find(params[:yacht_id])
    authorize @booking
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
    sleep(60)
    redirect_to my_bookings_path
  end

  def booking_params
    params.require(:booking).permit(:check_out_date, :check_in_date)
  end
end
