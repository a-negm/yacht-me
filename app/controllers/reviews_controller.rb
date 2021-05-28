class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.booking = Booking.where(yacht: params[:yacht_id]).last
    if @review.save
      redirect_to yacht_path(params[:yacht_id])
    else
      redirect_to yachts_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
