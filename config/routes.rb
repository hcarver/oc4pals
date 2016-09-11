Rails.application.routes.draw do
  resources :ocs, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :sign_in, only: [:new, :create, :show], param: :guid

  root "home#index"
  devise_for :user
end
