class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @tracker = Tracker.new
  end

  def show
    @show = Category.find(params[:id])
  end
end
