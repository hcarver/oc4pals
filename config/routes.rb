Rails.application.routes.draw do
  resources :sign_in, only: [:new, :create, :show], param: :guid

  root "home#index"
end
