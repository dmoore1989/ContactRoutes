Rails.application.routes.draw do
  get 'users' => 'users#index', :as => 'users'
  post 'users' => 'users#create'
  get 'users/new' => 'users#new', :as => 'new_user'
  get 'user/:id/edit' => 'users#edit', :as => 'edit_user'
  get 'user/:id' => 'users#show', :as => 'user'
  patch 'user/:id' => 'users#update'
  put 'user/:id' => 'users#update'
  delete 'user/:id' => 'users#destroy'
end
