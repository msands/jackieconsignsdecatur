Rails.application.routes.draw do
  devise_for :users
  root "pages#index"

  get "index" => "pages#index"
  get "about" => "pages#about"
  get "terms" => "pages#terms"

end
