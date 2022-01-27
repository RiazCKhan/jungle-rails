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






  end
end