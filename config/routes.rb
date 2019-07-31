Rails.application.routes.draw do
  delete 'groups/:group_id/remove_user/:user_id' => 'groups#remove_user'
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  resources :events
  resources :attendees
  resources :user_groups
  resources :groups
  resources :users
  resources :activities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
