Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :parks
  delete "/park_lists/:id" => "park_lists#destroy"
  resources :parks_lists

  post "/parks_lists/:id" => "parks_lists#create"
end
