class TrackersController < ApplicationController
  def index
    @trackers = Tracker.all
  end
end
