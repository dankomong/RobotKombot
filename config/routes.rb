Rails.application.routes.draw do
  resources :battles
  resources :bosses
  resources :characters
  resources :jobs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
