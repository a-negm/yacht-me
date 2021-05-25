class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    
  end
  
  def show
    @yacht = Yacht.find(params[:id])
  end
end
