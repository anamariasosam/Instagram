class HomeController < ApplicationController
  def index
    @stores = Store.limit(10)
    @products =  Product.limit(4).order('created_at DESC')
  end
end
