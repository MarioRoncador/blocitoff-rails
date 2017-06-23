class UsersController < ApplicationController

  def show
    if current_user.present?
      @user = params[:id] ? User.find(params[:id]) : current_user
      @items = @user.items
      @item = Item.new
    else
      redirect_to root_path
    end
  end

end
