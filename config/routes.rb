Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    resources :reviews, except: [:show, :index]
  end
  get 'search', to: 'search#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "movies#index"
end
