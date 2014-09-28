Rails.application.routes.draw do  
  root 'site#home'
  get 'site/todo'

  

  match "auth/:provider/callback", to: 'sessions#create', via: [:get, :post]  

  
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]


  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  
  # resource 'users'

  
  # This is for the root url
  
  get 'site/home'

  get 'site/about'

  get 'site/faq'
end
