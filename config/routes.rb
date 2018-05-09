Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

  root to: 'pages#home'

  get '/profile', to: "pages#profile", as: 'profile'
  get '/editor', to: "pages#editor", as: 'editor'
  get '/resume', to: "pages#resume", as: 'resume'
end
