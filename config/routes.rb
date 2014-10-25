Rails.application.routes.draw do  
  root 'site#home'
  get 'site/todo' 
  get 'site/home'
  get 'site/about'
  get 'site/faq'
end
