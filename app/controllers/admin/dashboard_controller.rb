class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD'], only: :show

  def show
    # active record = COUNT # products in DB
    @number_of_products = Product.count
    
    # active record = COUNT # of categores in DB 
    @number_of_categories = Category.count
  end
end

# Use an @instance_variablein the controllers 'action' (=def show)
# render the values in the ERB template
