Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :jobs
      resource :sessions, only: [:show, :create, :destroy]
      resources :users, only: [:create]
    end
  end
end
