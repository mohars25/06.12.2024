Rails.application.routes.draw do
  # Définir la page d'accueil
  root 'pages#home'

  # Route pour afficher la page d'accueil à l'adresse /pages/home
  get 'pages/home'

  # Définir les routes pour les docteurs
  resources :doctors, only: [:index, :show, :new, :edit]
  
  resources :appointments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # Autres routes ici si nécessaire
end
