class TrackersController < ApplicationController
  before_action :set_tracker, only: [ :show, :edit, :update, :destroy ]
  def index
    # @trackers = Tracker.all
    start_date = params.fetch(:start_date, Date.today).to_date
    @trackers = Tracker.where(created_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end

  def show
  end

  def new
    @tracker = Tracker.new
    @treatment = Treatment.find(params[:treatment_id])
  end

  def create
    @tracker = Tracker.new(tracker_params)
    @tracker.save
    redirect_to treatment_categories_path
  end

  def edit
  end

  def update
    @tracker.update(tracker_params)
    redirect_to tracker_path(@tracker)
  end

  def destroy
    @tracker.destroy
    redirect_to tracker_path
  end

  private

  def tracker_params
    params.require(:tracker).permit(:rating, :notes, :photo)
  end

  def set_tracker
    @tracker = Tracker.find(params[:id])
    authorize @tracker
  end

end
