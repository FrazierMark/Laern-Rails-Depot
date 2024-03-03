class Cart < ApplicationRecord
  # dependent: :destroy indicates that the existence of line
  # items is dependent on the existence of the cart
  # If we destroy the cart, we want Rails to destroy any line items
  has_many :line_items, dependent: :destroy
end
