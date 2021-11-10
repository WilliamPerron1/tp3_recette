class AdminController < SecretController
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