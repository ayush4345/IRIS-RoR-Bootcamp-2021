Rails.application.routes.draw do
  get '/about_page/index', to: "about_page#index", as: "page"
     # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'about_page#index'
  get 'about_json', to: 'about_page#about_json'
  post 'about_page', to: 'about_page#about_page'
  get 'about_form', to: 'about_page#about_form'
  


end
