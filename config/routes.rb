Rails.application.routes.draw do
  resources :menus
  resources :workers
  get 'admin/index'
  resources :groups

  get 'home/index'

  devise_scope :user do
    root to: "devise/sessions#new"
  end
  
  devise_for :users

  scope :admin do
    root to: "admin#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
