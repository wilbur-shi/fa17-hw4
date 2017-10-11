Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  get '/todos/new', to: 'home#new'
  post '/todos', to: 'home#create'
end
