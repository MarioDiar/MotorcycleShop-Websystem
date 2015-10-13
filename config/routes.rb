Rails.application.routes.draw do
  resources :articles

  resources :contacts, except: :new

  resources :covers

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


  #CRUD for covers
  #CRUD for branches
  resources :branches

  #CRUD for motorcycles
  resources :motorcycles
    #authentication for admin via devise
  devise_for :admins

  #default route
  root 'welcome#index'

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
