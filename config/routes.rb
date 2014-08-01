Rails.application.routes.draw do 

  get 'download/index'

  get 'download/pdf'

  get 'download/doc'

  resource :my_items, only: :show

  get "myitems" => "my_items#show"
  
  resources :products

  resources :contacts, only: [:new, :create]

  devise_for :users
  root "pages#index"

  get "index" => "pages#index"
  get "about" => "pages#about"
  get "terms" => "pages#terms"
  get "consign" => "pages#consign"

end
