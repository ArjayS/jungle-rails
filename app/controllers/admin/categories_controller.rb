class Admin::CategoriesController < ApplicationController
  def index
    @category_name_to_id = {}
    @product_per_category_count = {}
    @product_category = Category.joins(:products)

    @product_category.map do |pc|
      unless @product_per_category_count[pc.name] == nil
        @product_per_category_count[pc.name] += 1
      else
        @product_per_category_count[pc.name] = 1
        @category_name_to_id[pc.name] = pc.id
      end
    end
  end
end