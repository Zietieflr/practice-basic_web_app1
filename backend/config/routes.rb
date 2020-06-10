Rails.application.routes.draw do
  resources :characters, only: [:index, :show, :create]
  resources :books, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
