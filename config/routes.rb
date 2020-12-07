Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :recruitments, except: :index do
    collection do
      get 'merit'
    end
    resources :orders, only: [:index, :new, :create, :show], controller: 'orders'
  end
  root to: "recruitments#index"
end
