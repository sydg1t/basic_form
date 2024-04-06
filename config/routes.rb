Rails.application.routes.draw do
  get '/', to: 'static_pages#index'
  get '/posts', to: 'posts#show'
  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
end
