Rails.application.routes.draw do
  get 'users/:id' => 'users#show', :as => 'user_index'

end
