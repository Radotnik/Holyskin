class TrackersController < ApplicationController
  def index
    @trackers = policy_scope(Tracker)
  end
end
