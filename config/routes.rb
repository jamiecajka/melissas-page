Rails.application.routes.draw do

  root 'users#new'
  
  resources :users do
      resources :services
      resources :posts
      resources :contacts
      resources :profiles
  end

  resources :profiles do
    resources :contacts
  end

  resources :posts
  resources :contacts
  resources :services

end
