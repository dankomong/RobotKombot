Rails.application.routes.draw do
  # resources :battles
  # resources :bosses
  # resources :characters, only: [:index]
  # resources :jobs
  # resources :users
resources :characters
resources :jobs
resources :sessions, only: [:new, :create, :destroy]
resources :users
resources :battles, only: [:show]
resources :bosses, only: [:index, :show]
post '/battles/:id', to: 'battles#fight'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
