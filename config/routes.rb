Rails.application.routes.draw do
  get 'accounts/show'
  get 'accounts/edit'
  root "top#home"
  resources :users
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
end
