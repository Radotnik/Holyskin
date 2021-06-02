class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(params[:treatment])
    @treatment.save
    redirect_to tracker_path(@tracker)
  end

  private

  def tracker_params
    params.require(:treatment).permit(:skin_condition, :start_date, :end_date, :status)
  end
end
