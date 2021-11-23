Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "public#show"

  get '/mesrecettes', to: 'public#mesrecettes'

  get '/mesrecettes/:id', to: 'public#mesrecettesDetail'
  
  get '/recettes/:id', to:'public#index'
  resources :recettes

  namespace :admin do
  get '', to:'secret#accueil'
  get 'recettes', to:'secret#show'
  get 'recettes/ajoutRecette', to:'secret#ajout'
  get 'recettes/:id', to:'secret#recetteAdmin'
  post 'recettesadd', to:'secret#creationAjout'
  get 'recettes/editRecette/:id', to:'secret#edit'
  patch 'recettes/editRecette/:id', to:'secret#update'
  
  end
end
