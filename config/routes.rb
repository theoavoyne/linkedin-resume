Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

  root to: 'pages#home'

  resources :users, only: [ :update ]
  resources :skills, only: [ :update, :create, :destroy ]
  resources :positions, only: [ :update, :create, :destroy, :show ]

  get '/profile', to: "pages#profile", as: 'profile'
  get '/editor', to: "pages#editor", as: 'editor'
  get '/resume', to: "pages#resume", as: 'resume'
end
