class StoreController < ApplicationController
  def index
    @index_view_count = index_view_counter
    @products = Product.order(:title)
  end
end
