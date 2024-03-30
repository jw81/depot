class StoreController < ApplicationController
  def index
    @index_visits = if session[:store_index_visits]
                      session[:store_index_visits] += 1 
                    else
                      session[:store_index_visits] = 1
                    end
    @products = Product.order(:title)
  end
end
