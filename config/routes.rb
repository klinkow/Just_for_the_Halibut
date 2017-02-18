Rails.application.routes.draw do
  root :to => 'products#about'

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  resources :users
  resources :products do
    resources :comments
  end
  
end
