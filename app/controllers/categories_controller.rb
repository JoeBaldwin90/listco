class CategoriesController < ApplicationController

  def index

    @categories = ["Jobs", "Ads", "Labour", "For Sale", "Events"]

  end

  def new
    @category = Category.new
  end

end
