Rails.application.routes.draw do
  namespace :api do
    get '/vans' => 'vans#index'
    post '/vans' => 'vans#create'
    get '/vans/:id' => 'vans#show'
    patch '/vans/:id' => 'vans#update'
    delete '/vans/:id' => 'vans#destroy'
  end 
end
