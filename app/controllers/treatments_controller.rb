class TreatmentsController < ApplicationController
  def index
    @treatments = policy_scope(Treatment)
    if params[:query].present?
    else
      puts "No treatments added"
  end

#   def show
#     @treatment = treatment_params
#   end

#   def new
#     @treatment = Treatment.new
#   end

#   def create
#     @treatment = Treatment.new(params[:treatment])
#     @treatment.save
#     redirect_to_treatment_path(@treatment)
#   end

#   def edit
#     @treatment = treatment_params
#   end

#   def update
#     @treatment = treatment_params
#     @treatment.update
#     redirect_to_treatment_path(@treatment)
#   end

#   def destroy
#     @treatment = treatment_params
#     @treatment.destroy
#     redirect_to_treatment_path
#   end

#   private

#   def treatment_params
#     params.require(:treatment).permit(:skin_condition, :start_date, :end_date, :status)
#   end
  end
end
