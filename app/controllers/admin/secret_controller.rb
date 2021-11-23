#william perron 12 novembre
class Admin::SecretController < AdminController
    
    skip_before_action :verify_authenticity_token
    layout "admin"

    def ajout
        
    end
    
    def show
        
        @users = User.all
        @recettes = Recette.all.order(:titre)
    end

    def recetteAdmin
        @recette = Recette.find(params[:id])
    end

    def accueil
    end

    def creationAjout
        Recette.create(
            titre: params[:titre],
            etapes: params[:etapes],
            user: current_user
        )
        redirect_to '/admin/recettes'
    end

    def edit
        @recette = Recette.find(params[:id])
    end

    def update
        @recette = Recette.find(params[:id])  
        if (@recette.update(params.require(:recette).permit(:titre, :etapes)))
            redirect_to @recette
        else
            render '/admin/recettes/edit'
        end
    end

    
end