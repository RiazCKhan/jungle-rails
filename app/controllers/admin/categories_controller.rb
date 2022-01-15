class Admin::CategoriesController < ApplicationController

  def index
    # @products = Product.order(id: :desc).all
    @categories = Category.all.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    # @product = Product.new(product_params)

    # if @product.save
    #   redirect_to [:admin, :products], notice: 'Product created!'
    # else
    #   render :new
    # end
  end

end
