require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

    it "creates a product with a name, price, quantity, and category" do
      @category = Category.new(name: "Evergreens")
      @product = Product.new(
      name: "Hay",
      price_cents: 5000,
      quantity: 20,
      category_id: @category
      )

      @category.products = [@product]
      
      expect(@product).to be_valid
    end

    it "does not create a product without a name" do
      @category = Category.new(name: "Evergreens")
      @product = Product.new(
      name: nil,
      price_cents: 5000,
      quantity: 20,
      category_id: @category
      )

      @category.products = [@product]
      
      expect(@product).to_not be_valid
    end

    it "does not create a product without a price" do
      @category = Category.new(name: "Evergreens")
      @product = Product.new(
      name: "Hay",
      price_cents: nil,
      quantity: 20,
      category_id: @category
      )

      @category.products = [@product]
      
      expect(@product).to_not be_valid
    end

    it "does not create a product without a quantity" do
      @category = Category.new(name: "Evergreens")
      @product = Product.new(
      name: "Hay",
      price_cents: 5000,
      quantity: nil,
      category_id: @category
      )

      @category.products = [@product]
      
      expect(@product).to_not be_valid
    end

    it "does not create a product without a category" do
      @category = Category.new(name: "Evergreens")
      @product = Product.new(
      name: "Hay",
      price_cents: 5000,
      quantity: 20,
      category_id: @category
      )
      
      expect(@product).to_not be_valid
    end
    
  end
end