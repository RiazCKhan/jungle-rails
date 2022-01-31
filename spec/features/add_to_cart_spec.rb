require 'rails_helper'

# RSpec.feature "AddToCarts", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
# end

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

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

scenario "They add product to cart" do
  # ACT
  visit root_path

  # DEBUG / VERIFY
  
  expect(page).to have_css 'article.product', count: 10
  
  product_add = page.find(:xpath, "/html/body/main/section/div/article[1]/footer/form/button")

  product_add.click
  
  sleep(3)

  save_screenshot

end

end


