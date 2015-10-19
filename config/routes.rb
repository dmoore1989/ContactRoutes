Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy, :show, :update] do
    resources :contacts, only: [:index]
    member do
      get 'favorites'
    end
  end

  resources :contacts, only: [:create, :destroy, :show, :update]


  resources :contact_shares, only: [ :create, :destroy]

end
