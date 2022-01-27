require 'rails_helper'

# DEFAULT STATEMENT
# RSpec.describe Product, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.new(:name => "execution")
      @product = Product.new(:name => "electric chair", :price => 999999, :quantity => 1, :category_id => 1)
    end

    it 'should save a new product' do
      @category.save!
      @product.save!
      expect(@product.id).to be_present
    end

    it "presence of product name" do
      expect(@product.name).to be_present
    end

  end
end