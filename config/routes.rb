Rails.application.routes.draw do  
  root 'site#home'
  
  get 'site/todo' 
  get 'site/home'
  get 'site/about'
  get 'site/faq'

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
end
