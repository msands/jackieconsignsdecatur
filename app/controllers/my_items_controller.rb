class MyItemsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @my_items = current_user.products
  end
end