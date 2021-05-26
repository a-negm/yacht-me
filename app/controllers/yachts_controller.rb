class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @yachts = Yachts.all
  end
  

  def show
    @yacht = Yacht.find(params[:id])
  end
end
