class AdminController < ApplicationController
    def show
        
        @users = User.where.not(recettes: nil)
    end

    def recetteAdmin
        @recette = Recette.find(params[:id])
    end

    def accueil
        
    end
end