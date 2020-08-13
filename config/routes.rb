Rails.application.routes.draw do
  root 'users#new'

  devise_for :users

  resources :users do
      resources :services
      resources :posts
      resources :contacts
      resources :profiles
  end

  resources :profiles, except: [:show ] do
    resources :contacts, only: [:index]
  end

  resources :contacts, except: [:show ] do
    resources :directions, only: [:index, :edit, :delete]
  end
  resources :posts, except: [:show ]
  resources :services, except: [:show ]
  resources :directions, only: [:edit]

end
