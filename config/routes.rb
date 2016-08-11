Rails.application.routes.draw do
  get   root               to:   'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create, :new]
  end
end
