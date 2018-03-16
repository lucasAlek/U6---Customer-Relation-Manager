Rails.application.routes.draw do

  get 'customers/alphabetized'
  get 'customers/missing_email'
  get 'customers/index'
  root to: "customers#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
