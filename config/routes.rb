Rails.application.routes.draw do

  namespace :admin do
    resources :pages
    resources :news
    resources :menus
    resources :workers
    resources :groups
    resources :homepages
  end
  
  get 'home/index'
  get 'login', to: 'login#login', as: 'login'
  get 'admin/index'
  get 'töötajad', to: 'web#worker'
  devise_for :users

  root to: 'web#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
