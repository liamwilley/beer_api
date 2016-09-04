Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/beers', to: 'beers#index'
      get '/beers/:id', to: 'beers#show'
      post '/beers', to: 'beers#create'      
      patch '/beers/:id', to: 'beers#update'
      delete '/beers/:id', to: 'beers#destroy'
    end
    namespace :v2 do
      get '/beers', to: 'beers#index'
      get '/beers/:id', to: 'beers#show'
      post '/beers', to: 'beers#create'
      patch '/beers/:id', to: 'beers#update'
      delete '/beers/:id', to: 'beers#destroy'
    end
  end
end
