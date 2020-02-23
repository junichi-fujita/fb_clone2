Rails.application.routes.draw do
  root "top#home"
  resources :users
  resources :pictures do
    get :all_picture, on: :collection
    post :confirm, on: :collection
  end
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
end
