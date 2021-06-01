class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @show = Category.find(params[:id])
  end

end

