require 'rails_helper'

# RSpec.feature "HomePages", type: :feature do
#   pending "add some scenarios (or delete) #{__FILE__}"
# end

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    save_screenshot
  end

end