Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api do
    get '/platforms', to: 'apis#platforms'
    get '/consoles', to: 'apis#consoles'
    get '/console-details', to: 'apis#console_details'
    get '/games', to: 'apis#games'
    get '/game-details', to: 'apis#game_details'
  end

end
