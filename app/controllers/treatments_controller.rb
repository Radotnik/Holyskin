class TreatmentsController < ApplicationController
  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(params[:treatment])
    @treatment.save
    redirect_to_treatment_path(@treatment)
  end

  def edit
    @treatment = Treatment.find(params[:id])
  end

  def update
    @treatment = Treatment.find(params[:id])
    @treatment.update
    redirect_to_treatment_path(@treatment)
  end

  def destroy
    @treatment = Treatment.find(params[:id])
    @treatment.destroy
    redirect_to_treatment_path
  end

  private

  def tracker_params
    params.require(:treatment).permit(:skin_condition, :start_date, :end_date, :status)
  end
end
