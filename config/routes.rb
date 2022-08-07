Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }

  root :to => "top#index"
  get "/post_strings/new" => "post_strings#new"
  get "/post_strings/index" => "post_strings#index"
  post 'post_strings/create' => "post_strings#create"

end
