Rails.application.routes.draw do
  
  resources :contacts, only: [:new, :create]

  devise_for :users
  root "pages#index"

  get "index" => "pages#index"
  get "about" => "pages#about"
  get "terms" => "pages#terms"
  get "consign" => "pages#consign"

end
