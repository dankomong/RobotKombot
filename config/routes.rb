Rails.application.routes.draw do
  # resources :battles
  # resources :bosses
  # resources :characters, only: [:index]
  # resources :jobs
  # resources :users
  resources :characters, only: [:index, :new, :show, :create]
  resources :jobs, only: [:index, :show]
  resources :battles, only: [:show]
  post '/battles/:id', to: 'battles#fight'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
