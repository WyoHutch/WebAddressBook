Rails.application.routes.draw do
  resources :tbl_addrs
  root 'home#index'
  get 'home/list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
