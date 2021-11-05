Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to:'public#show'
  
  get '/recettes/:id', to:'public#index'

  get '/admin', to:'admin#accueil'

  get '/admin/recettes', to:'admin#show'

  get '/admin/recettes/:id', to:'admin#recetteAdmin'

end
