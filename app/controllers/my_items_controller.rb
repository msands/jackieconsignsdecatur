class MyItemsController < ApplicationController
  def show
    @my_items = current_user.products
  end
end