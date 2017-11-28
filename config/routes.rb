Rails.application.routes.draw do
  get 'gif/cool'

  get 'gif/free'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  resources :articles
  root 'articles#index'

  root to: 'gif#cool'

  get '/cool' => 'gif#cool'
  get '/sweet' => 'gif#sweet'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # root to: 'gif#cool'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get 'articles/index'

  # get 'articles/new'

  # get 'articles/show'

  # get 'articles/create'

  # get 'articles/edit'

  # get 'articles/update'

  # get 'articles/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
