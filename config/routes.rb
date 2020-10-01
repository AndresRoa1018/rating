Rails.application.routes.draw do
  root 'users#index'
  resources :ratings
  resources :skills
  resources :users do
  	get "/search", to: "users#search", on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
