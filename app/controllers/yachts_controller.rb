class YachtsController < ApplicationController

  def show
    @yacht = Yacht.find(params[:id])
  end
end
