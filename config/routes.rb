Rails.application.routes.draw do
  root to: 'artists#index'
  get '/songs', to: 'songs#index'
  resources :artists do
    resources :songs
    resources :genres
  end
  get '/signin', to: 'users#signin_prompt'
  post '/signin', to: 'users#signin'
  get '/signout', to: 'users#signout'
end
