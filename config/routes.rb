Rails.application.routes.draw do  
  root 'site#home'
  
  get 'site/todo' 
  get 'site/home'
  get 'site/about'
  get 'site/faq'

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
