Rails.application.routes.draw do
  resources :record_types
  root to: 'default#index'
  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions"}
  devise_scope :user do
    get 'users/:id', to: 'users/registrations#show', as: 'show'
  end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
