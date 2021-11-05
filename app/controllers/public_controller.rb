class PublicController < ApplicationController
    
    def show
        @recettes = Recette.all.order(:titre)
        
    end

    def index
        @recette = Recette.find(params[:id])
        @ingredients = @recette.ingredients
        @ingredient = Array.new
        for ingredient in @ingredients
            @ingredient.push(ingredient.nom)
        end

        respond_to do |format|
            format.html 
            format.xml  { render xml: @ingredient}
            format.json { render json: @ingredient}
        end
    end
end