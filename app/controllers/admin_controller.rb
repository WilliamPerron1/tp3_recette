class AdminController < ApplicationController
    layout "application"
    before_action :authenticate_user!
    before_action :is_admin?

    def show
        
        @users = User.all
    end

    def recetteAdmin
        @recette = Recette.find(params[:id])
    end

    def accueil
    end



    def is_admin?
        unless current_user.is_admin == true
            flash[:notice] = "Only administrator have access here, redirecting to home page"
            redirect_to '/'
        end
        
    end
end