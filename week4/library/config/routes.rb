Rails.application.routes.draw do
  resources :publications
  resources :books
  resources :authors

  get "/library/index" ,to: "library#index"

  root "library#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
