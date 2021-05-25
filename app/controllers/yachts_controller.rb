class YachtsController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @yachts = Yacht.all
  end
=======
    skip_before_action :authenticate_user!, only: :show
>>>>>>> bb57cfb3f02abc485bcb6de4dfcc6f73d8c59c84

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new

  end

  def create

  end
end
