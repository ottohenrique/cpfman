Rails.application.routes.draw do
  root 'documentations#index'

  resources :documentations
end
