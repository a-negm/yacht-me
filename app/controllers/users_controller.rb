class UsersController < ApplicationController
  def show
    @user = current_user
    authorize User.find(params[:id])
    @yachts = @user.yachts
    @bookings = Booking.where(yacht_id: current_user.yachts)
  end
end
