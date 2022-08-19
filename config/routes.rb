Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api do
    get '/creator-roles', to: 'apis#creator_roles'
    get '/platforms', to: 'apis#platforms'
    get '/consoles', to: 'apis#consoles'
  end

end
