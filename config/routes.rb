Rails.application.routes.draw do
  get 'users/new'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :jobs
      resources :users, only: [:create]
    end
  end
end
