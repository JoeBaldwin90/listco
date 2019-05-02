class ListingsController < ApplicationController

  def new

    # Find the current category ID
    @category = Category.find(params[:category_id])
    # New listing = Add new form data to the Listing model which belongs to the current category ID.
    @listing = @category.listings.new

  end

end
