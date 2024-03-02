class StoreController < ApplicationController
  def index
    # Get all producst from db and order them by title
    @products = Product.order(:title)
  end
end
