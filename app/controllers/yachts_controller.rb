class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # raise
    # if params["search"]["location"].present?
    #   @yachts = policy_scope(Yacht.near(params["search"]["location"]))
    # else
      @yachts = policy_scope(Yacht)
    # end

    @markers = @yachts.geocoded.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude
      }
      # if params["search"]
      #   @filter = params["search"]["Categories"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      #   @yachts = @filter.empty? ? Yacht.all : Yacht.all.tagged_with(@filter, any: true)
      # else
      #   @yachts = Yacht.all
      # end
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

  def edit
    @yacht = Yacht.find(params[:id])
    authorize @yacht
  end

  def update
    @yacht = Yacht.find(params[:id])
    authorize @yacht
    @yacht.update(yacht_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @yacht = Yacht.find(params[:id])
    authorize @yacht
    @yacht.destroy
    redirect_to user_path(current_user)
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
