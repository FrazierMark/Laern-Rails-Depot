class StoreController < ApplicationController
  # Current Cart defined in app/controllers/concerns/current_cart.rb
  include CurrentCart
  before_action :set_cart

  def index
    # Get all producst from db and order them by title
    @products = Product.order(:title)
  end
end
