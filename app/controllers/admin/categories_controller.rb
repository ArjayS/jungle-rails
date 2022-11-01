class Admin::CategoriesController < ApplicationController
  def index
    @category_name_id = {}
    @product_per_category = {}
    @product_category = Category.joins(:products)
    
    @categories = Category.all
    
    @categories.each do |category|
      @product_per_category[category.name] = 0
      @category_name_id[category.name] = category.id
    end
    
    @product_category.map do |pc|
      @product_per_category[pc.name] += 1
    end
    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: "Categories Created!"
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
      :description,
      :category_id,
      :quantity,
      :image,
      :price
    )
  end


end