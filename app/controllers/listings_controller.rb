class ListingsController < ApplicationController

  def new

    # Find the current category ID
    @category = Category.find(params[:category_id])
    # New listing = Add new form data to the Listing model which belongs to the current category ID.
    @listing = @category.listings.new

  end

  def create

    # Find the current category ID
    @category = Category.find(params[:category_id])
    @listing = @category.listings.new(form_params)

    @listing.save

    redirect_to category_path(@category)

  end

  def form_params

    params.require(:listing).permit(:title, :body)

  end

end
