class CategoriesController < ApplicationController
  def index
    @skincare = Category.where(group: 'skincare')
    @environmental = Category.where(group: 'environmental')
    @lifestyle = Category.where(group: 'lifestyle')

    @categories = Category.all
    @tracker = Tracker.new
  end

  def show
    @show = Category.find(params[:id])
  end
end
