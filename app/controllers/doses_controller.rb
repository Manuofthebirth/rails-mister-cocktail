class DosesController < ApplicationController
	def new
	  @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = Dose.new
	end

	def create
	  @dose = Dose.new(dose_params)
      @dose.cocktail = Cocktail.find(params[:cocktail_id])
      if @dose.save
       redirect_to cocktail_show_path(@cocktail), notice: 'Dose was successfully created.'
      else
        render :new
      end
	end

	def destroy
	  @dose = Dose.find(params[:id])
	  @dose.destroy
	end

	private

	def dose_params
      params.require(:dose).permit(:description)
    end
end

# DosesController

#   POST create
#     with valid params
#       creates a new Dose (FAILED - 10)
#       assigns a newly created dose as @dose (FAILED - 11)
#       redirects to the created dose (FAILED - 12)