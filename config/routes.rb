Rails.application.routes.draw do
  root "top#home"
  resources :users
end
