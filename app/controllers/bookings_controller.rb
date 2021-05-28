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
    authorize @booking
    @booking.user = current_user
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:user_id])
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to my_bookings_path
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    redirect_to user_path(current_user)
  end
  # def successful
  #   @bookings = Yacht.find(params[:yacht_id])
  #   authorize @bookings

  #   redirect_to my_bookings_path
  # end
  # def booking_status_params
  #   params.require(:booking_status).permit()
  # end

  def booking_params
    params.require(:booking).permit(:check_out_date, :check_in_date, :status)
  end
end
