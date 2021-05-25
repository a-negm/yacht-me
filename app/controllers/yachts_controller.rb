class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yachts = Yacht.all
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @user = current_user
    @yacht.user = @user
    if @yacht.save
      redirect_to yachts_path
    else
      render :new
    end
  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :description, :yacht_type, :length, :number_of_cabins,
     :rental_price,
     :user_id,
     :guests)
  end

end
