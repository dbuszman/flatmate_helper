Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/help'

  get 'static_pages/about'

  resources :flatmates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'flatmates#index'
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
