Rails.application.routes.draw do
  root 'public_pages#home'

  get 'dashboard' => 'dashboard#show'

  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure'        => 'auth0#failure'

  #get 'auth0/callback'

  #get 'auth0/failure'

  #get 'dashboard/show'

  #get 'public_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
