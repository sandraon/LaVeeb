Rails.application.routes.draw do

  namespace :admin do
    root to: 'admin#index'
    #get 'admin/index'

    resources :navigations
    resources :pages
    resources :news
    resources :menus
    resources :workers
    resources :groups
    resources :homepages
  end
  
  get 'home/index'
  get 'login', to: 'login#login', as: 'login'
  

  # Subpages
  get 'töötajad', to: 'web#worker'
  get 'rühmad', to: 'web#group'
  get 'nädalamenüü', to: 'web#foodmenu'
  get 'teated', to: 'web#news'
  get 'alamleht', to: 'web#subpage'


  #resources :pages, only: ['show']
  
  devise_for :users

  root to: 'web#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #this has to be last line
  get '/:slug', to: 'pages#show'

end
