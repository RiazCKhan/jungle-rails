require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe User, type: :model do
  describe 'User Valiations' do

    before do
      @user = User.new(:first_name => 'Jim',
         :last_name => 'Test', 
         :email => 'jt@mail.com', 
         :password_digest => '123')
      @user.save
    end

    it "confirms first name" do
      expect(@user.first_name).to eq('Jim')
    end

    it "user first name must not be empty" do
      expect(@user.first_name).not_to be_empty
    end

    it "confirms last name" do
      expect(@user.last_name).to eq('Test')
    end

    it "user last name must not be empty" do
      expect(@user.last_name).not_to be_empty
    end

    it "confirms email" do
      expect(@user.email).to match('jt@mail.com')
    end

    it "user email must not be empty" do
      expect(@user.email).not_to be_empty
    end

    it "confirm email case sensitive match" do
      expect(@user.email).not_to match('JT@mail.com')
    end

    it "confirms password" do
      expect(@user.password_digest).to eq('123')
    end

    it "confirms inccorect password" do
      expect(@user.password_digest).not_to eq('456')
    end

    it "password must have a minimum length of 3 chars" do
       should { ensure_length_of(@user.password_digest).is_at_least(3) }
    end
  end

  describe '.authenticate_with_credentials' do
    
  end
    
end