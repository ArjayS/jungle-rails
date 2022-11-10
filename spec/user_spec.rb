require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "creates an account when first and last name, email, and having both the password and password confirmation the same" do
      @user = User.new(
        first_name: 'Robert', 
        last_name: 'Servado', 
        email: 'robertservado@mail.com', 
        password: '1234567', 
        password_confirmation: '1234567'
        )

      expect(@user).to be_valid
    end

    it "does not create an account when the password, and password confirmation are not the same" do
      @user = User.new(
        first_name: 'Robert', 
        last_name: 'Servado', 
        email: 'robertservado@mail.com', 
        password: '1234567', 
        password_confirmation: '7654321'
        )

      expect(@user).to_not be_valid
    end

    it "does not create an account when there has no first name" do
      @user = User.new(
        first_name: nil, 
        last_name: 'Servado', 
        email: 'robertservado@mail.com', 
        password: '1234567', 
        password_confirmation: '7654321'
        )

      expect(@user).to_not be_valid
    end

    it "does not create an account when there has no last name" do
      @user = User.new(
        first_name: 'Robert', 
        last_name: nil, 
        email: 'robertservado@mail.com', 
        password: '1234567', 
        password_confirmation: '1234567'
        )

      expect(@user).to_not be_valid
    end

    it "does not create an account when there has no email" do
      @user = User.new(
        first_name: 'Robert', 
        last_name: 'Servado', 
        email: nil, 
        password: '1234567', 
        password_confirmation: '1234567'
        )

      expect(@user).to_not be_valid
    end
  end

  # it "does not create an account with a similar email in the database, specifically there is a test@test.com while another user wants to use TEST@TEST.com" do
  #   @user = User.new(
  #     first_name: 'test', 
  #     last_name: 'test', 
  #     email: 'test@test.com', 
  #     password: '1234567', 
  #     password_confirmation: '1234567'
  #     )
  #   @user2 = User.new(
  #     first_name: 'TEST', 
  #     last_name: 'TEST', 
  #     email: 'TEST@TEST.com', 
  #     password: '1234567', 
  #     password_confirmation: '1234567'
  #     )

  #   expect(@user).to be_valid
  #   expect(@user2).to_not be_valid
  # end

  describe '.authenticate_with_credentials' do
    # examples for this class method here

    # it "creates an account when first and last name, email, and having both the password and password confirmation the same" do
    #   @user = User.new(
    #     first_name: 'Robert', 
    #     last_name: 'Servado', 
    #     email: 'robertservado@mail.com', 
    #     password: '1234567', 
    #     password_confirmation: '1234567'
    #     )
    #   @user = User.authenticate_with_credentials(@user.email, @user.password)

    #   expect(@user).to be_valid
    # end

  end
end