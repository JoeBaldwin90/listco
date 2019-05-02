class ListingsController < ApplicationController

  def new

    @category = Category.find(params[:category_id])
    @listing = @category.listings.new

  end

end
