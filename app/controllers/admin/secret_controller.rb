#william perron 12 novembre
class Admin::SecretController < AdminController
    
    
    layout "admin"
    
    def show
        
        @users = User.all
    end

    def recetteAdmin
        @recette = Recette.find(params[:id])
    end

    def accueil
    end
end