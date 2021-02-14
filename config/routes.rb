Rails.application.routes.draw do
  resources :studies
  resources :data
  resources :reads
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index' => 'home#index'
  get '/add' => 'calculator#add'
  post '/result' => 'calculator#result'
  get '/result/:first/:second' => 'calculator#result'
  get '/write' => 'home#write'
  post '/create' => 'home#create'
  get '/show/:id' => 'home#show'
  get '/modify/:post_id' => 'home#modify'
  post '/update/:post_id' => 'home#update'
  get '/delete/:post_id' => 'home#delete'
end
