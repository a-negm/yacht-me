class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yachts = policy_scope(Yacht)

    @markers = @yachts.geocoded.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude
      }
    end
  end

  def new
    @yacht = Yacht.new
    authorize @yacht
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    authorize @yacht
    if @yacht.save
      redirect_to yachts_path
    else
      render :new
    end
  end

  def show
    @yacht = Yacht.find(params[:id])
    authorize @yacht
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :description, :yacht_type, :length, :number_of_cabins,
                                  :rental_price,
                                  :user_id,
                                  :location,
                                  :guests, photo: [] )
  end
end
