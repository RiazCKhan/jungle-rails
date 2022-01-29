require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User, type: :model do
  describe 'User Valiations' do

    before do
      @user = User.new(:first_name => 'Jim', :last_name => 'Test', :email => 'jt@mail.com', :password_digest => '123')
      @user.save
    end

    it "confirms first name"



    it "confirms last name"

    it "confirms email"

    it "confirms password"

  end
end