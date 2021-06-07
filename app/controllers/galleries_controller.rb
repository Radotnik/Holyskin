class GalleriesController < ApplicationController
  before_action :set_tracker, only: :index
  before_action :set_category, only: :index

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @trackers = Tracker.where(created_at: start_date.beginning_of_week..start_date.end_of_week)
    # @trackers = Tracker.where(category_id: )
  end

  def show
  end

  private

  # def tracker_params
  #   params.require(:tracker).permit(:rating, :notes, :photo)
  # end

  def set_tracker
    @tracker = Tracker.find(params[:id])
    # authorize @tracker
  end

  def set_category
    @tracker = Tracker.find(params[:category_id])
  end
end
