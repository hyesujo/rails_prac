Rails.application.routes.draw do
  get 'shops/create'
  devise_for :users
  devise_for :people
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :packs, only: [:index, :show]

  resources :shops, only: [:create]

  # get "packs" => "packs#index"
  # get "packs/:id" => "packs/show"

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
