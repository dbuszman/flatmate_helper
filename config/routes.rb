Rails.application.routes.draw do
  resources :flatmates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
