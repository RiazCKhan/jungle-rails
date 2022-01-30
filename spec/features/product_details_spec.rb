require 'rails_helper'

# RSpec.feature "ProductDetails", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
# end

RSpec.feature "Visitor navigates product page (home page)", type: :feature, js: true do

  # SETUP

  # Create Category App
  before :each do
    @category = Category.create! name: 'Apparel'
  # Add 10 items to the Category  
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

scenario "They click on one product" do
  # ACT
  visit root_path
  # DEBUG / VERIFY
  
  expect(page).to have_css 'article.product', count: 10
  
  # product = page.find(:xpath, "/html/body/main/section/div/article[1]/header/a/h4")

  product_img = page.find(:xpath, "./html/body/main/section/div/article[1]/header/a/img")

  product_img.click

  sleep(3)
  
  save_screenshot

  end

end


# Visit Home
# Locate 'Product' in Nav
# Select Product
# expect page

# Locate product item in _product partial
# Select item
# expect item