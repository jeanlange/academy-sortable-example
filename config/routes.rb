Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  get '/notes' => 'notes#index'
  post '/notes/create' => 'notes#create'
  get '/notes/:id/update_order/:new_order' => 'notes#update_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/notes/update_order' => 'notes#update_all_orders'
end
