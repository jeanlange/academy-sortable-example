Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  get '/notes' => 'notes#index'
  post '/notes/create' => 'notes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
