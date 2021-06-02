class TrackersController < ApplicationController
  before_action :set_tracker, only: [ :show, :edit, :update, :destroy ]
  def index
    @trackers = Tracker.all
  end

  def show
  end

  def new
    @tracker = Tracker.new
  end

  def create
    tracker = Tracker.new(tracker_params)
    tracker.save
    redirect_to tracker_path(tracker)
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
