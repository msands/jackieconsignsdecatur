class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:myitems]

  def index
  end

  def about
  end

  def terms
  end

  def consign
  end

  def myitems
  end
end
