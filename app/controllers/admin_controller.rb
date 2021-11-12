#william perron 12 novembre
class AdminController < Admin::SecretController
    layout "application"
    

    def show
        
        @users = User.all
    end

    def recetteAdmin
        @recette = Recette.find(params[:id])
    end

    def accueil
    end



    
end