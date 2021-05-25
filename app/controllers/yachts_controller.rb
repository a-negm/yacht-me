class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new

  end

  def create

  end
end
