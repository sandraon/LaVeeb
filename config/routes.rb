Rails.application.routes.draw do
  resources :pages
  resources :groups
  resources :news
  resources :menus
  resources :workers
  
  get 'home/index'

  devise_scope :user do
    root to: "devise/sessions#new"
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
