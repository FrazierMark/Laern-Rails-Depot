module CurrentCart

  private

    # Can share this method among controllers
    def set_cart

      # Attempts to find a cart_id from session object
      # Then searches the db for cart corresponding to the cart_id
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end
