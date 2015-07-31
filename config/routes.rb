Rails.application.routes.draw do
  root 'posts#index'
  #get '/posts' => 'posts#index'
  #get '/posts/new' => 'posts#new'
  #post '/posts' => 'posts#create'
  #get '/posts/:id/edit' => 'posts#edit'

  resources :posts
end
