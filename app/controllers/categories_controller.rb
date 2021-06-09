class CategoriesController < ApplicationController
  def index
    @skincare = Category.where(group: 'skincare')
    @environmental = Category.where(group: 'environmental')
    @lifestyle = Category.where(group: 'lifestyle')

    @categories = Category.all
    @treatment = Treatment.find(params[:treatment_id])

    # @tracker = Tracker.new
  end

  def show
    @category = Category.find(params[:id])
    @treatment = Treatment.find(params[:treatment_id])
    @trackers = Tracker.where(category: @category, treatment: @treatment)
    @tracker_progress = @trackers.find_by(category: @category)
  end
end
