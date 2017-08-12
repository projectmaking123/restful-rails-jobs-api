Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :jobs
      resource :sessions, only: [:create, :destroy]
    end
  end
end
