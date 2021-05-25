class YachtsController < ApplicationController
    skip_before_action :authenticate_user!, only: :show

  def show
    @yacht = Yacht.find(params[:id])
  end
end
