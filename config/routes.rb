Rails.application.routes.draw do
  root to: "pages#index"
  get '/trajet', to: 'pages#trajet'
  get '/lieu', to: 'pages#lieu'
  get '/programme', to: 'pages#programme'
  get '/affaires', to: 'pages#affaires'
  get '/food', to: 'pages#food'
  get '/questionnaires', to: 'pages#questionnaires'

  # scope path: "/trajet" do
  #   resources :trains
  #   resources :voitures
  # end

  resources :trains
  resources :voitures
  resources :foods

  # scope path: "/food" do
  #   resources :food
  # end




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
