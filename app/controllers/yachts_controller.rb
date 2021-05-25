class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    
  end
  

  def show
    @yacht = Yacht.find(params[:id])
  end
end
