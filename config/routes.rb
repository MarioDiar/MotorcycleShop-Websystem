Rails.application.routes.draw do

  #default route
  root 'welcome#index'

  # CRUD FOR THE MODELS
  resources :articles
  resources :contacts, except: :new
  resources :covers
  resources :branches
  resources :motorcycles

  # CRUD for admins with security
  devise_for :admins

  #route to dashboard main menu
  get "/dashboard", to: "dashboard#menu"
  #route to noticas
  get "/noticias", to: "welcome#noticias"
  #route to motorcycles in the main page
  get "/motos", to: "welcome#motos"
  #route to branches in the main page
  get "/agencias", to: "welcome#agencias"
  #route to contact in the main page
  get "/contacto", to: "welcome#contacto"
  #route to show each motorcycle
  get "/moto/:id", to: "welcome#show", as: "moto"

  # publish articles
  put "/articles/:id/publish", to: "articles#publish"

  

  #CRUD ROUTES of models
  #get "/models" index
    #post "/models" create
    #delete "/models/:id" delete 
    #get "/models/:id" show
    #get "/models/new" new
    #get "/models/:id/edit" edit
    #patch "/models/:id" update
    #put "/models/:id" update
end
