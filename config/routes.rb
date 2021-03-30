Rails.application.routes.draw do
  root "users#create"
  resource :signup, only: %i[create]
  resources :authentications, only: %i[create]
  resources :users, only: %i[index]
end
