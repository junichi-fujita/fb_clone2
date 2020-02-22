Rails.application.routes.draw do
  get 'accounts/show'
  get 'accounts/edit'
  root "top#home"
  resources :users
  resources :pictures
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
end
