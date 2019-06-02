Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :jobs, only: [:index, :new, :create, :show] do
    resources :entries
  end
end
