Rails.application.routes.draw do
  
  resources :pitches

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "raffler#index"

  resources :players
end
