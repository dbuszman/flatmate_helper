Rails.application.routes.draw do
  resources :flatmates
  devise_for :users
  root 'static_pages#home'

  get 'static_pages/about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'flatmates#index'
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
