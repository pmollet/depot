class StoreController < ApplicationController

  # def access_counter
  #   if session[:counter].nil?
  #     session[:counter] = 0
  #   else session[:counter] += 1
  #   end
  #   @count = access_counter
  # end

  def access_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

  def index
    @products = Product.order(:title)
    @count = access_counter
  end
end
