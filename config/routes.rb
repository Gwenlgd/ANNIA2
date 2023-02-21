Rails.application.routes.draw do
  root to: "pages#index"
  get '/trajet', to: 'pages#trajet'
  get '/lieu', to: 'pages#lieu'
  get '/programme', to: 'pages#programme'
  get '/affaires', to: 'pages#affaires'


  scope path: "/trajet" do
    resources :trains
    resources :voitures
  end

  resources :trains
  resources :voitures

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
