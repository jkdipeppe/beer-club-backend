Rails.application.routes.draw do
  resources :meetings
  resources :beers
  resources :members
  get '/member', to: 'members#show_member'
  get '/beers/:id', to: 'beers#show_beers'

  post '/login', to: 'auth#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
