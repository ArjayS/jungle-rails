class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['USERNAME'].to_s, password: ENV['PASSWORD'].to_s
  # http_basic_authenticate_with name: "Jungle", password: "book"
  
  def show
    @category = Category.all
    @product = Product.all
  end
end
