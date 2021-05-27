class UsersController < ApplicationController
  def show
    @user = current_user
    authorize User.find(params[:id])
    @yachts = @user.yachts
  end
end
