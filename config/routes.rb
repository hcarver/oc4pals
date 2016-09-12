Rails.application.routes.draw do
  resources :ocs, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :round_one_questions, only: [:new, :create, :edit, :update, :destroy]
    resources :round_two_questions, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :sign_in, only: [:new, :create, :show], param: :guid

  root "home#index"
  devise_for :user
end
