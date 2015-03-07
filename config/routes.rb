Rails.application.routes.draw do
  root to: "raffler#index"
  resources :players
  resources :pitches

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



end
