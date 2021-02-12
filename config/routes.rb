Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'home#index'
  get '/add' => 'calculator#add'
  post '/result' => 'calculator#result'
end
