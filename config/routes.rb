Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/app'
  root 'welcome#index'

  resources :categories do
    resources :entries
  end

  get "users/new"

  post "users/create"

  get "users/login"

  post "users/signin"
  
end
