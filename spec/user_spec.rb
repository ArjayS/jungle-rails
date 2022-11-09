require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "creates an account when first and last name, email, password, and password confirmation is added" do
      @user = User.create(
        first_name: 'Robert', 
        last_name: 'Servado', 
        email: 'robertservado@mail.com', 
        password: '12345', 
        password_confrimation: '12345'
        )

      @user.save

      expect(@user).to be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end
end