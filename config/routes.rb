Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  devise_for :users
  root "pages#index"

  get "index" => "pages#index"
  get "about" => "pages#about"
  get "terms" => "pages#terms"

end
