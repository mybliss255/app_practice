Rails.application.routes.draw do


  get  "/" => "home#top"
  get  "about" => "home#about"

  get  "posts/index" => "posts#index"
  get  "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get  "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get  "posts/:id" => "posts#show"

  get  "users/index" => "users#index"
  get  "users/new" => "users#new"
  post "users/create" => "users#create"
  get  "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"
  get  "users/:id" => "users#show"

  get  "login" => "users#login_form"
  post "login" => "login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
