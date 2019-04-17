Rails.application.routes.draw do
  # resources :battles
  # resources :bosses
  # resources :characters, only: [:index]
  # resources :jobs
  # resources :users
  get '/', to: 'characters#index'
  get '/jobs', to: 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
