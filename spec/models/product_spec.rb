require 'rails_helper'

# DEFAULT STATEMENT
# RSpec.describe Product, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Product, type: :model do
  describe 'Validations' do

    
    it "new product saved" do
      @category = Category.new(:name => "execution")
      @category.save!

      @product = Product.new(:name => "electric chair", :price => 999999, :quantity => 1, :category_id => @category.id)
      @product.save!

      expect(@product).to be_present
    end

    it "absence of product name" do
      @category = Category.new(:name => "execution")
      @category.save!

      @product = Product.new(:price => 999999, :quantity => 1, :category_id => @category.id)
      @product.save
      expect(@product.errors.full_messages).to match_array(["Name can't be blank"])
    end

    it "absence of product price" do
      @category = Category.new(:name => "execution")
      @category.save!

      @product = Product.new(:name => "electric chair", :quantity => 1, :category_id => @category.id)
      @product.save
      expect(@product.errors.full_messages).to match_array(["Price cents is not a number", "Price is not a number", "Price can't be blank"])
    end

    it "absence of quantity" do
      @category = Category.new(:name => "execution")
      @category.save!

      @product = Product.new(:name => "electric chair", :price => 999999, :category_id => @category.id)
      @product.save
      expect(@product.errors.full_messages).to match_array(["Quantity can't be blank"])
    end

    it "absence of product category" do
      @category = Category.new(:name => "execution")
      @category.save!

      @product = Product.new(:name => "electric chair", :price => 999999, :quantity => 1)
      @product.save
      expect(@product.errors.full_messages).to match_array(["Category can't be blank"])
    end

  end
end