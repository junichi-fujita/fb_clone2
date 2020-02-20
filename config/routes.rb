Rails.application.routes.draw do
  root "top#home"
  resources :users
  resource :session, only: [:create, :destroy]
end
