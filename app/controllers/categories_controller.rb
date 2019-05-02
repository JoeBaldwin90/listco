class CategoriesController < ApplicationController

  def index

    @categories = ["Jobs", "Ads", "Labour", "For Sale", "Events"]

  end

  def new

  end

end
