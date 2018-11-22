class CocktailsController < ApplicationController
	def index
	  @cocktails = Cocktail.all
	end

	def show
	  @cocktail = Cocktail.find(params[:id])
	end

	def new
	  @cocktail = Cocktail.new
	end

	def create
      @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save
        redirect_to cocktail_show_path(@cocktail), notice: 'Cocktail was successfully created.'
      else
        render :new
      end

      def destroy
	    @cocktail = Cocktail.find(params[:id])
	    @cocktail.destroy
	  end
    end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

# CocktailsController

#   POST create
#     with valid params
#       redirects to the created cocktail (FAILED - 6)